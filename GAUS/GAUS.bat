@echo off
dir |find "StorageDataFile"
if errorlevel 1 goto setpasswd
if errorlevel 0 goto goon
:setpasswd
set /p passwd="输入您的git 下载密码，无密码请按回车(注意大小写)："
echo Do not delete this file>StorageDataFile
:goon
echo set Wshell=CreateObject("Wscript.Shell")>passwd.vbs
echo wscript.Sleep 500>>passwd.vbs
echo Wshell.SendKeys "%passwd%">>passwd.vbs
echo Wshell.SendKeys "{ENTER}">>passwd.vbs
echo Wscript.quit>>passwd.vbs
mshta vbscript:msgbox("！！！程序开始后禁止其他多余键鼠操作！！！",100,"运行须知")(window.close)
for /f "tokens=*" %%i in ('dir /ad  /b ') do (  
    xcopy passwd.vbs %%i /y/d
    cd %%i 
    start passwd.vbs
    git pull
    del /s/f/q passwd.vbs
    cd ..
)
