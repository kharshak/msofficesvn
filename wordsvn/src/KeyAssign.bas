Attribute VB_Name = "KeyAssign"
'------------------- Copy & paste from here to the Tool module of wordsvn.dot --------------------
' $Rev: 323 $
' Copyright (C) 2008 Koki Yamamoto <kokiya@gmail.com>
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' :$Date:: 2008-06-30 00:09:02 +0900#$
' :Author: Koki Yamamoto <kokiya@gmail.com>
' :Module Name: KeyAssign
' :Description: Shortcut key assign

Option Explicit

' :Function: Register shortcut keys
Public Sub RegisterShortcutKey()
  Dim ShortcutKeyRegistered As Integer
  Dim ShortcutKeyOnOffSetting As Integer

  ShortcutKeyRegistered = _
  GetPrivateProfileInt(gIniSectNameShortcutKey, gIniKeyNameRegistered, _
                       gIniValRegistered, GetIniFileFullPath)

  ShortcutKeyOnOffSetting = _
  GetPrivateProfileInt(gIniSectNameShortcutKey, gIniKeyNameShortcutKeyOnOff, _
                       gIniValShortcutKeyOff, GetIniFileFullPath)
  If ShortcutKeyRegistered = gIniValNotRegistered Then
  ' Needs to register shortcut key
    If ShortcutKeyOnOffSetting = gIniValShortcutKeyOff Then
      ClearAllRegisteredShortcutKey
    ElseIf ShortcutKeyOnOffSetting = gIniValShortcutKeyOn Then
      RegisterShortcutKeyByUserSetting
    End If
    ' Record that shortcut key assignment is registered.
    WriteIniShortcutKeyRegStat gIniValRegistered
  End If
End Sub


' :Function:  Write shortcut key registered status to ini file
' :Arguments: InstStat [i] Shortcut key assignment registration status
'                            gIniValNotRegistered (Not registered yet)
'                            gIniValRegistered    (Already registered)
' :Return value:
Function WriteIniShortcutKeyRegStat(ByVal InstStat As Integer) As Long
  Dim StrBuf As String

  StrBuf = CStr(InstStat)
  WriteIniShortcutKeyRegStat = _
  WritePrivateProfileString(gIniSectNameShortcutKey, gIniKeyNameRegistered, StrBuf, GetIniFileFullPath)
End Function


' :Function: Register shortcut keys by user setting in ini file.
Sub RegisterShortcutKeyByUserSetting()
  Dim StrBuf As String * 128
  Dim StrSize As Long

  ' Want to save this customization to the add-in file
  CustomizationContext = ThisDocument

  ' Clear current setting
  KeyBindings.ClearAll

  ' Register new setting
  AddKeyBindingAsIni "TsvnUpdate", "Update"
  AddKeyBindingAsIni "TsvnCi", "Commit"
  AddKeyBindingAsIni "TsvnDiff", "Diff"
  AddKeyBindingAsIni "TsvnRepoBrowser", "RepoBrowser"
  AddKeyBindingAsIni "TsvnLog", "Log"
  AddKeyBindingAsIni "TsvnLock", "Lock"
  AddKeyBindingAsIni "TsvnUnlock", "Unlock"
  AddKeyBindingAsIni "TsvnAdd", "Add"
  AddKeyBindingAsIni "TsvnDelete", "Delete"
  AddKeyBindingAsIni "OpenExplorer", "Explorer"

  ' Save the key binding setting in the add-in file.
  ThisDocument.Save
   
End Sub


' :Function: Clear all registered shortcut key bindings from the add-in file.
Sub ClearAllRegisteredShortcutKey()
  CustomizationContext = ThisDocument
  KeyBindings.ClearAll
  ' Save the key binding setting in the add-in file.
  ThisDocument.Save
End Sub

' :Function: Add new key binding to keybindings collection as a user set in the ini file.
Function AddKeyBindingAsIni(ByVal TsvnCmd As String, ByVal IniKeyBase As String)
  Dim i As Long
  Dim StrBuf As String * 128
  Dim KeyCode As Long
  
  Dim IniKey As String
  Dim Key1 As Variant
  Dim Key2 As Variant
  Dim Key3 As Variant
  Dim Key4 As Variant
  Dim KeyNum As Long
  Dim KeyCodeSetInIni As Long
  
  For i = 1 To 4
    IniKey = IniKeyBase & i
    KeyCode = GetPrivateProfileInt(gIniSectNameShortcutKey, IniKey, wdNoKey, GetIniFileFullPath)
      
    Select Case i
    Case 1
      Key1 = KeyCode
      If Key1 = wdNoKey Then
        KeyNum = 0
        Exit For
      End If
    Case 2
      Key2 = KeyCode
      If Key2 = wdNoKey Then
        KeyNum = 1
        Exit For
      End If
    Case 3
      Key3 = KeyCode
      If Key3 = wdNoKey Then
        KeyNum = 2
        Exit For
      End If
    Case 4
      Key4 = KeyCode
      If Key4 = wdNoKey Then
        KeyNum = 3
      Else
        KeyNum = 4
      End If
    Case Else
    End Select
  Next i

  Select Case KeyNum
  Case 0
    Exit Function
  Case 1
    KeyCodeSetInIni = BuildKeyCode(Key1)
  Case 2
    KeyCodeSetInIni = BuildKeyCode(Key1, Key2)
  Case 3
    KeyCodeSetInIni = BuildKeyCode(Key1, Key2, Key3)
  Case 4
    KeyCodeSetInIni = BuildKeyCode(Key1, Key2, Key3, Key4)
  Case Else
  End Select
  
  KeyBindings.Add _
    KeyCategory:=wdKeyCategoryCommand, _
    Command:=TsvnCmd, _
    KeyCode:=KeyCodeSetInIni
End Function


