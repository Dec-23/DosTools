@echo off
echo.
echo.
echo   �������������[�������������[  �����������[ �������[   �����[���������������[���������������[
echo  �����X�T�T�T�T�a�����X�T�T�����[�����X�T�T�����[���������[  �����U�����X�T�T�T�T�a�����X�T�T�T�T�a
echo  �����U     �������������X�a���������������U�����X�����[ �����U���������������[���������������[
echo  �����U     �����X�T�T�T�a �����X�T�T�����U�����U�^�����[�����U�^�T�T�T�T�����U�^�T�T�T�T�����U
echo  �^�������������[�����U     �����U  �����U�����U �^���������U���������������U���������������U
echo   �^�T�T�T�T�T�a�^�T�a     �^�T�a  �^�T�a�^�T�a  �^�T�T�T�a�^�T�T�T�T�T�T�a�^�T�T�T�T�T�T�a
echo.
echo 					v1.1.2
echo 					from:KDyN
echo.  
echo                     !!!Warning!!!
echo.
echo !!!��������ģʽ���ܽ�ռ��c���ڴ�(Լ:6000MB)!!!
echo !!!��֮�ر�����ģʽ���������C���ڳ��ռ�   !!!
choice /C YNQ /M "�����밴 Y, �ر��밴 N, ȡ�������밴 Q��"
if errorlevel 3 goto Exit
if errorlevel 2 goto Off
if errorlevel 1 goto On
:On
powercfg -h on
echo.
echo ������... 
echo.
echo wscript.sleep 100>sleep.vbs
set/p= #<nul
for /L %%i in (1 1 35) do set /p a=#<nul&start /wait sleep.vbs>nul
echo 100%%
echo.
del /f /s /q sleep.vbs
echo �ѿ���
goto exit
:Off
powercfg -h off
echo.
echo �ر���... 
echo.
echo wscript.sleep 50>sleep.vbs
set/p= #<nul
for /L %%i in (1 1 35) do set /p a=#<nul&start /wait sleep.vbs>nul
echo 100%%
echo.
del /f /s /q sleep.vbs
echo �ѹر�
goto exit
:Exit
echo.
echo good bye
choice /t 2 /d y /n >nul
echo ..

