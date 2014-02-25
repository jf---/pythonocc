// HXX wrapper generated by pythonOCC generate_code.py script.
#ifndef __StepElement_wrapper__
#define __StepElement_wrapper__

#include "/Library/OCE/0.14/include/oce/Handle_StepElement_AnalysisItemWithinRepresentation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_Curve3dElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_CurveElementEndReleasePacket.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_CurveElementFreedomMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_CurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_CurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_CurveElementSectionDerivedDefinitions.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_ElementAspectMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_ElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_ElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfCurveElementEndReleasePacket.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfSurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfVolumeElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray1OfVolumeElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray2OfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray2OfSurfaceElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HArray2OfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HSequenceOfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HSequenceOfElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_HSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_MeasureOrUnspecifiedValueMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_Surface3dElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SurfaceElementProperty.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SurfaceSectionField.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SurfaceSectionFieldConstant.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_SurfaceSectionFieldVarying.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_UniformSurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_Volume3dElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_StepElement_VolumeElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_AnalysisItemWithinRepresentation.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfCurveElementEndReleasePacket.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfHSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfMeasureOrUnspecifiedValue.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfSurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfVolumeElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array1OfVolumeElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array2OfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array2OfSurfaceElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Array2OfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Curve3dElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveEdge.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementEndReleasePacket.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementFreedom.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementFreedomMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_CurveElementSectionDerivedDefinitions.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Element2dShape.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_ElementAspect.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_ElementAspectMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_ElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_ElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_ElementOrder.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_ElementVolume.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_EnumeratedCurveElementFreedom.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_EnumeratedCurveElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_EnumeratedSurfaceElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_EnumeratedVolumeElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfCurveElementEndReleasePacket.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfHSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfMeasureOrUnspecifiedValue.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfSurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfVolumeElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray1OfVolumeElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray2OfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray2OfSurfaceElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HArray2OfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HSequenceOfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HSequenceOfElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_HSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_MeasureOrUnspecifiedValue.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_MeasureOrUnspecifiedValueMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceNodeOfSequenceOfElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceOfCurveElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceOfCurveElementSectionDefinition.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceOfElementMaterial.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SequenceOfSurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Surface3dElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceElementProperty.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceElementPurposeMember.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceSectionField.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceSectionFieldConstant.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_SurfaceSectionFieldVarying.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_UniformSurfaceSection.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_UnspecifiedValue.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Volume3dElementDescriptor.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_Volume3dElementShape.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_VolumeElementPurpose.hxx"
#include "/Library/OCE/0.14/include/oce/StepElement_VolumeElementPurposeMember.hxx"

#endif __StepElement_wrapper__