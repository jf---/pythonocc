'''
Sketch for a high-level API for pythonOCC

Please note the following;
@readonly
means that the decorated method is a readonly descriptor
@property
means that the decorated method can be set / get using the descriptor
( irony is that just using @property *would* result in a readonly descriptor :")

Sometimes a set of methods should be contained in another module or class, or simply grouped.
For instance the set of methods after:
#===============================================================================
#    Curve.local_properties
#===============================================================================

Can be a module, class or namespace.

'''
from OCC.gp import *

from OCC.TopoDS import *
from OCC.Geom import *
from OCC.BRep import *
# for projection
from OCC.GeomAPI import *
from OCC.Extrema import *
# for checking if a surface is planar
from OCC.GeomLib import *
from OCC.TopExp import *
from OCC.BRepBuilderAPI import *

# for generalizing edges/curves/analytic types
from OCC.Adaptor2d import *
from OCC.Adaptor3d import *
# we'll use this, really
from OCC.BRepAdaptor import *

from OCC.GCPnts import *
from OCC.KBE.types_lut import GeometryLookup, ShapeToTopology
from OCC.Utils.Construct import *

import functools

#===============================================================================
# HELPER CLASSES
#===============================================================================


#===============================================================================
# DISPLAY
#===============================================================================
global display

class singleton(object):
    def __init__(self, cls):
        self.cls = cls
        self.instance_container = []

    def __call__(self, *args, **kwargs):
        if not len(self.instance_container):
            cls = functools.partial(self.cls, *args, **kwargs)
            self.instance_container.append(cls())
        return self.instance_container[0]
        
@singleton
class Display(object):
    def __init__(self):
        from OCC.Display.SimpleGui import init_display
        self.display, self.start_display, self.add_menu, self.add_function_to_menu = init_display()
    def __call__(self, *args, **kwargs):
        return self.display.DisplayShape(*args, **kwargs)

#============
# base class 
#============

class KbeObject(object):
    """base class for all KBE objects"""

    def __init__(self, name=None):
        """Constructor for KbeObject"""
        self.name = name
        self._dirty = False
        self._topods = None
        self._topo_type = None # defined in concrete class __init__ method
        self.tolerance = 1e-7

    @property
    def is_dirty(self):
        '''when an object is dirty, its topology will be rebuild when update is called'''
        return self._dirty

    @is_dirty.setter
    def is_dirty(self, _bool):
        self._dirty = bool(_bool)

    def copy(self):
        """
        """
        from OCC.BRepBuilderAPI import BRepBuilderAPI_Copy
        cp = BRepBuilderAPI_Copy(self)
        cp.Perform(self)
        return self.__class__(ShapeToTopology()(cp.Shape()))

    def distance(self, other):
        '''
        return the minimum distance

         :return: minimum distance,
             minimum distance points on shp1
             minimum distance points on shp2
        '''
        if hasattr(other, 'topo'):
            return minimum_distance(self, other)
        else:
            return minimum_distance(self, other)

    def show( self, *args, **kwargs):
        """
        renders the topological entity in the viewer

        :param update: redraw the scene or not
        """
        Display()(self, *args, **kwargs)

    def build(self):
        if self.name.startswith('Vertex'):
            self = make_vertex(self)

    def __eq__(self, other):
        return self.IsEqual(other)

    def __ne__(self, other):
        return not(self.__eq__(other))

class GlobalProperties(object):
    '''
    global properties for all topologies
    '''
    def __init__(self, instance):
        from OCC.GProp import GProp_GProps
        from OCC.BRepGProp import BRepGProp
        self.instance = instance
        self.system = GProp_GProps()
        _topo_type = self.instance.type
        if _topo_type == 'face' or _topo_type == 'shell':
            BRepGProp().SurfaceProperties(self.instance, self.system)
        elif _topo_type == 'edge':
            BRepGProp().LinearProperties(self.instance, self.system)
        elif _topo_type == 'solid':
            BRepGProp().VolumeProperties(self.instance, self.system)

    def centre(self):
        """
        :return: centre of the entity
        """
        return self.system.CentreOfMass()

    def inertia(self):
        '''returns the inertia matrix'''
        return self.system.MatrixOfInertia(), self.system.MomentOfInertia()

    def area(self):
        '''returns the area of the surface'''
        return self.system.Mass()

    def bbox(self):
        '''
        returns the bounding box of the face
        '''
        return get_boundingbox(self.instance)
