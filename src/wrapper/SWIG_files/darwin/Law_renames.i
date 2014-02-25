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
%rename(DownCast) Handle_Law_Function::DownCast;
%rename(DownCast) Handle_Law_ListNodeOfLaws::DownCast;
%rename(DownCast) Handle_Law_BSpFunc::DownCast;
%rename(DownCast) Handle_Law_Interpol::DownCast;
%rename(DownCast) Handle_Law_BSpline::DownCast;
%rename(DownCast) Handle_Law_S::DownCast;
%rename(DownCast) Handle_Law_Linear::DownCast;
%rename(DownCast) Handle_Law_Constant::DownCast;
%rename(DownCast) Handle_Law_Composite::DownCast;
%rename(MaxDegree) Law_BSpline::MaxDegree;
%rename(MixBnd) Law::MixBnd;
%rename(MixTgt) Law::MixTgt;
%rename(Reparametrize) Law::Reparametrize;
%rename(Scale) Law::Scale;
%rename(ScaleCub) Law::ScaleCub;