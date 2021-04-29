Attribute VB_Name = "Resource"
'------------------- Copy & paste from here to the Resource module of pptsvn.ppa --------------------
' $Rev: 482 $
' Copyright (C) 2008 Koki Yamamoto <kokiya@gmail.com>
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' :$Date:: 2008-08-14 03:59:46 +0900#$
' :Author: Koki Yamamoto <kokiya@gmail.com>
' :Module Name: Resource
' :Description: This module contains global resource data.

Option Explicit

' Strings for Menu and Command bar
Public Const gMainMenuName   As String = "Menu Bar"
Public Const gcapSvnMenuBar  As String = "&Subversion"
Public Const gcapSvnCmdBar   As String = "Subversion"

Public Const gcapUpdate      As String = "�X�V"
Public Const gakyUpdate      As String = "(&U)"
Public Const gcapLock        As String = "���b�N���擾"
Public Const gakyLock        As String = "(&O)"
Public Const gcapCommit      As String = "�R�~�b�g"
Public Const gakyCommit      As String = "(&C)"
Public Const gcapDiff        As String = "����"
Public Const gakyDiff        As String = "(&D)"
Public Const gcapLog         As String = "���O�\��"
Public Const gakyLog         As String = "(&L)"
Public Const gcapRepoBrowser As String = "���|�W�g���u���E�U"
Public Const gakyRepoBrowser As String = "(&R)"
Public Const gcapUnlock      As String = "���b�N���J��"
Public Const gakyUnlock      As String = "(&C)"
Public Const gcapAdd         As String = "�ǉ�"
Public Const gakyAdd         As String = "(&A)"
Public Const gcapDelete      As String = "�폜"
Public Const gakyDelete      As String = "(&L)"
Public Const gcapExplorer    As String = "�G�N�X�v���[�����J��"
Public Const gakyExplorer    As String = "(&E)"

' FaceId of built-in button images
Public Const gfidUpdate      As Integer = 360
Public Const gfidLock        As Integer = 225
Public Const gfidCommit      As Integer = 359
Public Const gfidDiff        As Integer = 195
Public Const gfidLog         As Integer = 44
Public Const gfidRepoBrowser As Integer = 25
Public Const gfidUnlock      As Integer = 277
Public Const gfidAdd         As Integer = 137
Public Const gfidExplorer    As Integer = 23
Public Const gfidDelete      As Integer = 1786

' Message Strings
Public Const gmsgFileNameCap As String = "�t�@�C���� : "
Public Const gmsgContentNameCap As String = "�v���[���e�[�V������ : "
Public Const gmsgUpdateAskActiveContentMod As String = "�A�N�e�B�u�v���[���e�[�V�����͕ύX����Ă��܂��B�X�V�𒆎~���܂����H�u�������v��I������ƕύX�͔j������A�X�V���p�����čs���܂��B"
Public Const gmsgCommitErrActiveContentFileReadOnly As String = "�R�~�b�g�ł��܂���B�A�N�e�B�u�v���[���e�[�V�����͕ύX����Ă��܂����A�t�@�C���������ǂݎ���p�ƂȂ��Ă��܂��B"
Public Const gmsgCommitAskSaveMod As String = "�A�N�e�B�u�v���[���e�[�V�����ɂ͕ύX������܂��B�㏑���ۑ����܂����H"
Public Const gmsgCommitAskSaveModCloseReopen As String = "�R�~�b�g���ɁA�t�@�C��������������čēx�J���܂��B�A�N�e�B�u�v���[���e�[�V�����ɂ͕ύX������܂��B�㏑���ۑ����܂����H"
Public Const gmsgLockAskActiveContentFileReadOnly As String = "�A�N�e�B�u�v���[���e�[�V�����͕ύX����Ă��܂����A�t�@�C���������ǂݎ���p�ƂȂ��Ă��܂��B���b�N�擾�𒆎~���܂����H�u�������v��I������ƕύX�͔j������A���b�N�擾���p�����čs���܂��B"
Public Const gmsgLockAskSaveModContent As String = "���b�N���擾���ɁA�t�@�C��������������čēx�J���܂��B�A�N�e�B�u�v���[���e�[�V�����ɂ͕ύX������܂��B�㏑���ۑ����܂����H"
Public Const gmsgUnlockErrActiveContentFileReadOnly As String = "���b�N���J���ł��܂���B�A�N�e�B�u�v���[���e�[�V�����͕ύX����Ă��܂����A�t�@�C���������ǂݎ���p�ƂȂ��Ă��܂��B"
Public Const gmsgUnlockAskActiveContentMod As String = "�A�N�e�B�u�v���[���e�[�V�����͕ύX����Ă��܂��B���b�N�̊J���ł͕ύX���e�����|�W�g���֔��f���邱�Ƃ͂ł��܂���B���s���܂���?"
Public Const gmsgAddAskCommit As String = "�����ăR�~�b�g�����s���܂���?"
Public Const gmsgErrNotSaveFile As String = "�t�@�C����ۑ����邱�Ƃ͂ł��܂���ł����B"
Public Const gmsgErrActiveContentFileNotExist As String = "�A�N�e�B�u�v���[���e�[�V�����̃t�@�C��������܂���B�v���[���e�[�V�������t�@�C���ɕۑ����Ă��炱�̑�����s���Ă��������B"
Public Const gmsgErrFolderNotUnderCtrl As String = "�A�N�e�B�u�v���[���e�[�V�����̓o�[�W�����R���g���[�����̃t�H���_�ɂ���܂���B"
Public Const gmsgErrFileNotUnderCtrl As String = "�A�N�e�B�u�v���[���e�[�V�����̓o�[�W�����R���g���[������Ă��܂���B"
Public Const gmsgDeleteAskDelete As String = "�t�@�C�����폜���悤�Ƃ��Ă��܂��B��낵���ł����H"
Public Const gmsgDeleteAskCommit As String = "�����ăR�~�b�g�����s���܂���?"
Public Const gmsgAskSaveMod As String = "�A�N�e�B�u�v���[���e�[�V�����ɂ͕ύX������܂��B�㏑���ۑ����܂����H"
Public Const gmsgAskLockMod As String = "SVN�Ǘ����̃��b�N�����t�A�N�e�B�u�v���[���e�[�V�����ɕύX������܂��B���b�N���擾���܂���?���b�N���擾����ƍ��s�����ύX�͔j������܂��B"

