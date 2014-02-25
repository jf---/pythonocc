// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState_HeaderFile
#define _XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_DefineHandle_HeaderFile
#include <Standard_DefineHandle.hxx>
#endif
#ifndef _Handle_XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState_HeaderFile
#include <Handle_XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState.hxx>
#endif

#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _XBooleanOperations_StateOfShape_HeaderFile
#include <XBooleanOperations_StateOfShape.hxx>
#endif
#ifndef _TCollection_MapNodePtr_HeaderFile
#include <TCollection_MapNodePtr.hxx>
#endif
#ifndef _TCollection_MapNode_HeaderFile
#include <TCollection_MapNode.hxx>
#endif
class TColStd_MapIntegerHasher;
class XBOPTools_IndexedDataMapOfIntegerState;



class XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState : public TCollection_MapNode {

public:

  
      XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState(const Standard_Integer& K1,const Standard_Integer K2,const XBooleanOperations_StateOfShape& I,const TCollection_MapNodePtr& n1,const TCollection_MapNodePtr& n2);
  
        Standard_Integer& Key1() const;
  
        Standard_Integer& Key2() const;
  
        TCollection_MapNodePtr& Next2() const;
  
        XBooleanOperations_StateOfShape& Value() const;




  DEFINE_STANDARD_RTTI(XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState)

protected:




private: 


Standard_Integer myKey1;
Standard_Integer myKey2;
XBooleanOperations_StateOfShape myValue;
TCollection_MapNodePtr myNext2;


};

#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem XBooleanOperations_StateOfShape
#define TheItem_hxx <XBooleanOperations_StateOfShape.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_IndexedDataMapNode XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState
#define TCollection_IndexedDataMapNode_hxx <XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState
#define TCollection_IndexedDataMapNode_Type_() XBOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState_Type_()
#define TCollection_IndexedDataMap XBOPTools_IndexedDataMapOfIntegerState
#define TCollection_IndexedDataMap_hxx <XBOPTools_IndexedDataMapOfIntegerState.hxx>

#include <TCollection_IndexedDataMapNode.lxx>

#undef TheKey
#undef TheKey_hxx
#undef TheItem
#undef TheItem_hxx
#undef Hasher
#undef Hasher_hxx
#undef TCollection_IndexedDataMapNode
#undef TCollection_IndexedDataMapNode_hxx
#undef Handle_TCollection_IndexedDataMapNode
#undef TCollection_IndexedDataMapNode_Type_
#undef TCollection_IndexedDataMap
#undef TCollection_IndexedDataMap_hxx


// other Inline functions and methods (like "C++: function call" methods)


#endif