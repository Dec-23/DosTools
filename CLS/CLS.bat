@echo off
title @CLS
dir |find "@CLS"
if errorlevel 1 goto foundmd
if errorlevel 0 goto next


:foundmd
md @CLS
goto next



:next
dir |find "*.zip"
if errorlevel 1 goto aaa
if errorlevel 0 goto clsfile
:aaa
dir |find "*.rar"
if errorlevel 1 goto bbb
if errorlevel 0 goto clsfile
:bbb
dir |find "*.7z"
if errorlevel 1 goto ccc
if errorlevel 0 goto clsfile
:ccc
mshta vbscript:msgbox("û�з����κ�ѹ���ļ�",64,"@CLS")(window.close)
exit
rem ɵ��dos���������û�У�


:clsfile
move /y *.rar ..\@CLS
move /y *.zip ..\@CLS
move /y *.7z ..\@CLS
mshta vbscript:msgbox("�������",64,"@CLS")(window.close)
exit