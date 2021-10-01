@echo off
echo.
echo.
echo   ██████╗██████╗  █████╗ ███╗   ██╗███████╗███████╗
echo  ██╔════╝██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝
echo  ██║     ██████╔╝███████║██╔██╗ ██║███████╗███████╗
echo  ██║     ██╔═══╝ ██╔══██║██║╚██╗██║╚════██║╚════██║
echo  ╚██████╗██║     ██║  ██║██║ ╚████║███████║███████║
echo   ╚═════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝
echo.
echo 					v1.1.2
echo 					from:KDyN
echo.  
echo                     !!!Warning!!!
echo.
echo !!!开启休眠模式功能将占用c盘内存(约:6000MB)!!!
echo !!!反之关闭休眠模式则可以清理C盘腾出空间   !!!
choice /C YNQ /M "开启请按 Y, 关闭请按 N, 取消操作请按 Q。"
if errorlevel 3 goto Exit
if errorlevel 2 goto Off
if errorlevel 1 goto On
:On
powercfg -h on
echo.
echo 开启中... 
echo.
echo wscript.sleep 100>sleep.vbs
set/p= #<nul
for /L %%i in (1 1 35) do set /p a=#<nul&start /wait sleep.vbs>nul
echo 100%%
echo.
del /f /s /q sleep.vbs
echo 已开启
goto exit
:Off
powercfg -h off
echo.
echo 关闭中... 
echo.
echo wscript.sleep 50>sleep.vbs
set/p= #<nul
for /L %%i in (1 1 35) do set /p a=#<nul&start /wait sleep.vbs>nul
echo 100%%
echo.
del /f /s /q sleep.vbs
echo 已关闭
goto exit
:Exit
echo.
echo good bye
choice /t 2 /d y /n >nul
echo ..

