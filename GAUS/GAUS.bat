@echo off
dir |find "StorageDataFile"
if errorlevel 1 goto setpasswd
if errorlevel 0 goto goon
:setpasswd
set /p passwd="��������git �������룬�������밴�س�(ע���Сд)��"
echo Do not delete this file>StorageDataFile
:goon
echo set Wshell=CreateObject("Wscript.Shell")>passwd.vbs
echo wscript.Sleep 500>>passwd.vbs
echo Wshell.SendKeys "%passwd%">>passwd.vbs
echo Wshell.SendKeys "{ENTER}">>passwd.vbs
echo Wscript.quit>>passwd.vbs
mshta vbscript:msgbox("����������ʼ���ֹ��������������������",100,"������֪")(window.close)
for /f "tokens=*" %%i in ('dir /ad  /b ') do (  
    xcopy passwd.vbs %%i /y/d
    cd %%i 
    start passwd.vbs
    git pull
    del /s/f/q passwd.vbs
    cd ..
)
