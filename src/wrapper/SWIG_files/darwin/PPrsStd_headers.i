/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PPrsStd_AISPresentation.hxx>
#include<Handle_PPrsStd_AISPresentation_1.hxx>
#include<PPrsStd_AISPresentation.hxx>
#include<PPrsStd_AISPresentation_1.hxx>

// Additional headers necessary for compilation.

#include<DBC_BaseArray.hxx>
#include<DBC_BaseArray_objs.hxx>
#include<DBC_DBVArray.hxx>
#include<DBC_VArrayNodeOfVArrayOfCharacter.hxx>
#include<DBC_VArrayNodeOfVArrayOfExtCharacter.hxx>
#include<DBC_VArrayNodeOfVArrayOfInteger.hxx>
#include<DBC_VArrayNodeOfVArrayOfReal.hxx>
#include<DBC_VArrayOfCharacter.hxx>
#include<DBC_VArrayOfExtCharacter.hxx>
#include<DBC_VArrayOfInteger.hxx>
#include<DBC_VArrayOfReal.hxx>
#include<DBC_VArrayTNodeOfVArrayOfCharacter.hxx>
#include<DBC_VArrayTNodeOfVArrayOfExtCharacter.hxx>
#include<DBC_VArrayTNodeOfVArrayOfInteger.hxx>
#include<DBC_VArrayTNodeOfVArrayOfReal.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Handle_PCollection_HExtendedString.hxx>
#include<Storage_stCONSTclCOM.hxx>
%}