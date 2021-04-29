Attribute VB_Name = "cmnVersion"
'------------------- Copy & paste from here to the cmnVersion module of add-in file --------------------
' $Rev: 385 $
' Copyright (C) 2008 Koki Yamamoto <kokiya@gmail.com>
'     All rights reserved.
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' :$Date:: 2008-08-26 02:00:23 +0900#$
' :Author:        Koki Yamamoto <kokiya@gmail.com>
' :Module Name:   cmnVersion
' :Description:   Manage version number of this add-in.
'                 Common module through office application software.

Option Explicit

' Release Version Number of msofficesvn
Public Const gVersion As String = "1.4.0"

' MS-Office application major version number
Public Const gOffice97MajorVer = 8
Public Const gOffice2000MajorVer = 9
Public Const gOfficeXPMajorVer = 10
Public Const gOffice2003MajorVer = 11
Public Const gOffice2007MajorVer = 12
Public Const gOffice2010MajorVer = 14

' :Function:     Get MS-Office major version number
' :Return value: Major version number of MS-Office
Function GetAppMajorVersionNum() As Integer
  GetAppMajorVersionNum = Val(Application.Version)
End Function

