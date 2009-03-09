/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module GraphTools

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include GraphTools_dependencies.i


%include GraphTools_headers.i




%nodefaultctor Handle_GraphTools_SC;
class Handle_GraphTools_SC : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_GraphTools_SC();
		%feature("autodoc", "1");
		Handle_GraphTools_SC();
		%feature("autodoc", "1");
		Handle_GraphTools_SC(const Handle_GraphTools_SC &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_SC(const GraphTools_SC *anItem);
		%feature("autodoc", "1");
		Handle_GraphTools_SC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphTools_SC {
	GraphTools_SC* GetObject() {
	return (GraphTools_SC*)$self->Access();
	}
};

%nodefaultctor Handle_GraphTools_ListNodeOfListOfSequenceOfInteger;
class Handle_GraphTools_ListNodeOfListOfSequenceOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_GraphTools_ListNodeOfListOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger(const Handle_GraphTools_ListNodeOfListOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger(const GraphTools_ListNodeOfListOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfListOfSequenceOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphTools_ListNodeOfListOfSequenceOfInteger {
	GraphTools_ListNodeOfListOfSequenceOfInteger* GetObject() {
	return (GraphTools_ListNodeOfListOfSequenceOfInteger*)$self->Access();
	}
};

%nodefaultctor Handle_GraphTools_ListNodeOfSCList;
class Handle_GraphTools_ListNodeOfSCList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_GraphTools_ListNodeOfSCList();
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList();
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList(const Handle_GraphTools_ListNodeOfSCList &aHandle);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList(const GraphTools_ListNodeOfSCList *anItem);
		%feature("autodoc", "1");
		Handle_GraphTools_ListNodeOfSCList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphTools_ListNodeOfSCList {
	GraphTools_ListNodeOfSCList* GetObject() {
	return (GraphTools_ListNodeOfSCList*)$self->Access();
	}
};

%nodefaultctor GraphTools_SC;
class GraphTools_SC : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GraphTools_SC();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void AddVertex(const Standard_Integer V);
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		Standard_Integer GetVertex(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void AddFrontSC(const Handle_GraphTools_SC &SC);
		%feature("autodoc", "1");
		const GraphTools_SCList & GetFrontSC() const;
		%feature("autodoc", "1");
		void AddBackSC(const Handle_GraphTools_SC &SC);
		%feature("autodoc", "1");
		const GraphTools_SCList & GetBackSC() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GraphTools_SC();

};
%extend GraphTools_SC {
	Handle_GraphTools_SC GetHandle() {
	return *(Handle_GraphTools_SC*) &$self;
	}
};

%nodefaultctor GraphTools_SCList;
class GraphTools_SCList {
	public:
		%feature("autodoc", "1");
		GraphTools_SCList();
		%feature("autodoc", "1");
		void Assign(const GraphTools_SCList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~GraphTools_SCList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_GraphTools_SC &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & theIt);
		%feature("autodoc", "1");
		void Prepend(GraphTools_SCList & Other);
		%feature("autodoc", "1");
		void Append(const Handle_GraphTools_SC &I);
		%feature("autodoc", "1");
		void Append(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & theIt);
		%feature("autodoc", "1");
		void Append(GraphTools_SCList & Other);
		%feature("autodoc", "1");
		Handle_GraphTools_SC & First() const;
		%feature("autodoc", "1");
		Handle_GraphTools_SC & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertBefore(GraphTools_SCList & Other, GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_GraphTools_SC &I, GraphTools_ListIteratorOfSCList & It);
		%feature("autodoc", "1");
		void InsertAfter(GraphTools_SCList & Other, GraphTools_ListIteratorOfSCList & It);

};

%nodefaultctor GraphTools_ListIteratorOfListOfSequenceOfInteger;
class GraphTools_ListIteratorOfListOfSequenceOfInteger {
	public:
		%feature("autodoc", "1");
		~GraphTools_ListIteratorOfListOfSequenceOfInteger();
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfListOfSequenceOfInteger();
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfListOfSequenceOfInteger(const GraphTools_ListOfSequenceOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const GraphTools_ListOfSequenceOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;

};

%nodefaultctor GraphTools_ListIteratorOfSCList;
class GraphTools_ListIteratorOfSCList {
	public:
		%feature("autodoc", "1");
		~GraphTools_ListIteratorOfSCList();
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfSCList();
		%feature("autodoc", "1");
		GraphTools_ListIteratorOfSCList(const GraphTools_SCList &L);
		%feature("autodoc", "1");
		void Initialize(const GraphTools_SCList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_GraphTools_SC & Value() const;

};

%nodefaultctor GraphTools_TSNode;
class GraphTools_TSNode {
	public:
		%feature("autodoc", "1");
		~GraphTools_TSNode();
		%feature("autodoc", "1");
		GraphTools_TSNode();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void IncreaseRef();
		%feature("autodoc", "1");
		void DecreaseRef();
		%feature("autodoc", "1");
		Standard_Integer NbRef() const;
		%feature("autodoc", "1");
		void AddSuccessor(const Standard_Integer s);
		%feature("autodoc", "1");
		Standard_Integer NbSuccessors() const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer index) const;

};

%nodefaultctor GraphTools_ListNodeOfSCList;
class GraphTools_ListNodeOfSCList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GraphTools_ListNodeOfSCList(const Handle_GraphTools_SC &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_GraphTools_SC & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GraphTools_ListNodeOfSCList();

};
%extend GraphTools_ListNodeOfSCList {
	Handle_GraphTools_ListNodeOfSCList GetHandle() {
	return *(Handle_GraphTools_ListNodeOfSCList*) &$self;
	}
};

%nodefaultctor GraphTools_RGNode;
class GraphTools_RGNode {
	public:
		%feature("autodoc", "1");
		~GraphTools_RGNode();
		%feature("autodoc", "1");
		GraphTools_RGNode();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void SetVisited(const Standard_Integer v);
		%feature("autodoc", "1");
		Standard_Integer GetVisited() const;
		%feature("autodoc", "1");
		void AddAdj(const Standard_Integer adj);
		%feature("autodoc", "1");
		Standard_Integer NbAdj() const;
		%feature("autodoc", "1");
		Standard_Integer GetAdj(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void SetSC(const Handle_GraphTools_SC &SC);
		%feature("autodoc", "1");
		Handle_GraphTools_SC GetSC() const;

};

%nodefaultctor GraphTools_ListOfSequenceOfInteger;
class GraphTools_ListOfSequenceOfInteger {
	public:
		%feature("autodoc", "1");
		GraphTools_ListOfSequenceOfInteger();
		%feature("autodoc", "1");
		void Assign(const GraphTools_ListOfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~GraphTools_ListOfSequenceOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(GraphTools_ListOfSequenceOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(GraphTools_ListOfSequenceOfInteger & Other);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & First() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(GraphTools_ListOfSequenceOfInteger & Other, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const TColStd_SequenceOfInteger &I, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(GraphTools_ListOfSequenceOfInteger & Other, GraphTools_ListIteratorOfListOfSequenceOfInteger & It);

};

%nodefaultctor GraphTools_ListNodeOfListOfSequenceOfInteger;
class GraphTools_ListNodeOfListOfSequenceOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GraphTools_ListNodeOfListOfSequenceOfInteger(const TColStd_SequenceOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GraphTools_ListNodeOfListOfSequenceOfInteger();

};
%extend GraphTools_ListNodeOfListOfSequenceOfInteger {
	Handle_GraphTools_ListNodeOfListOfSequenceOfInteger GetHandle() {
	return *(Handle_GraphTools_ListNodeOfListOfSequenceOfInteger*) &$self;
	}
};