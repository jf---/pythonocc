#!/usr/bin/env python

# TODO:
# * need examples where the tangency to constraining faces is respected

# #Copyright 2009-2011 Jelle Ferina (jelleferinga@gmail.com)
# #
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import os

# pythonic api
from OCC.GeomAbs import GeomAbs_G1
from OCC.Utils.Common import random_color
from OCC.Utils.Topology import Topo
from OCC.KBE.edge import Edge
from OCC.Display.SimpleGui import init_display
from OCC.DataExchange.STEP import STEPImporter, STEPExporter

# raw api
from OCC.BRepOffsetAPI import BRepOffsetAPI_MakeFilling
from OCC.TopAbs import TopAbs_FACE, TopAbs_EDGE

display, start_display, add_menu, add_function_to_menu = init_display()


def hash_edge_lenght_to_face(faces):
    """
    for every edge in the list `faces`

        loop through the edges of the face
        associate (hash) the edge lenght to point to the face


    :note: this approach would blow less if you use a tuple ( length, edge-mid-point )

    the TopoDS_Edge entitiy has a HashCode method
    that might be actually a proper idea

    :param faces:
    :return: dict hashing all edge lengths
    """
    _edge_length_to_face = {}
    _edge_length_to_edge = {}

    for f in faces:
        tp = Topo(f, kbe_types=True)
        for e in tp.edges():
            length = round(e.length(), 3)
            _edge_length_to_face[length] = f
            _edge_length_to_edge[length] = e

    return _edge_length_to_face, _edge_length_to_edge


def build_curve_network(event=None):
    '''
    mimic the curve network surfacing command from rhino
    '''
    pth = "/Users/jelleferinga/GIT/pythonocc/src/examples/data/STEP214/"
    fname = "splinecage"
    step = STEPImporter(os.path.join(pth, fname + ".stp"))
    step.read_file()
    root_compound_shape = step.get_compound()
    topo = Topo(root_compound_shape)

    # approximate the hell out of all surfaces and curves
    # I wanna see it in its full glory
    display.Context.SetDeviationAngle(0.00001)  # 0.001 -> default
    display.Context.SetDeviationCoefficient(0.0001)  # 0.001 -> default

    tangent_constraint_faces = [f for f in topo.faces()]

    # loop through the imported faces
    # associate the length of each of the faces edges to the corresponding face
    _edge_length_to_face, _edge_length_to_edge = hash_edge_lenght_to_face(tangent_constraint_faces)

    # loop through the imported curves, avoiding the imported faces
    # when we've got these filtered out, we retrieved the geometry to build the surface from
    filtered_edges = [Edge(e) for e in topo._loop_topo(TopAbs_EDGE, root_compound_shape, TopAbs_FACE)]

    filtered_length = {}
    for e in filtered_edges:
        l = round(e.length(), 3)
        filtered_length[l] = e

    input_edge_face_pairs, edges_no_adjacent_face = [], []
    for l, edg in filtered_length.iteritems():
        if l in _edge_length_to_edge:
            edge_face_pair = ( _edge_length_to_edge[l], _edge_length_to_face[l] )
            input_edge_face_pairs.append(edge_face_pair)
        else:
            edges_no_adjacent_face.append(edg)

    brep_plate_builder = BRepOffsetAPI_MakeFilling()

    enforce_tangency = True

    if enforce_tangency:
        print "going for surface quality"
        brep_plate_builder.SetConstrParam(0.0001, 0.001, 0.01, 0.01) # ?!!! Tol2d=1.0, Tol3d=1.0, TolAng=1.0, TolCurv=1.0
        brep_plate_builder.SetApproxParam(8, 240) # MaxDeg=8, MaxSegments=9
        brep_plate_builder.SetResolParam(3, 64, 3) # Degree=3, NbPtsOnCur=15, NbIter=2, Anisotropie=0
    else:
        print "quick and dirty"

    for i in input_edge_face_pairs:
        display.DisplayShape(i, color=random_color())
        constraint_edg, support_face = i
        brep_plate_builder.Add(constraint_edg, support_face, GeomAbs_G1)

    # not entirely sure why this fails... how is that different from adding from points?
    # for e in edges_no_adjacent_face:
    #     brep_plate_builder.Add(e, GeomAbs_C0)

    for e in edges_no_adjacent_face:
        display.DisplayShape(e)
        for pt in e.divide_by_number_of_points(12)[2:-2]:
            brep_plate_builder.Add(pt[1])

    brep_plate_builder.Build()
    if brep_plate_builder.IsDone():
        face = brep_plate_builder.Shape()
        display.DisplayColoredShape(face, "ORANGE")
    else:
        print "constructing the surface failed"

    export_fname = os.path.join(pth, fname + "_pyocc_face.stp")
    step_export = STEPExporter(export_fname)
    step_export.add_shape(face)
    step_export.write_file()


if __name__ == "__main__":
    build_curve_network()
    display.FitAll()
    start_display()