@echo off
title MIS�p�u��
:Main
cls
echo create by ���@
echo.
echo �п�ܥH�U�\��
echo.
echo 1.Skype
echo 2.���}�C��
echo 3.SSH
echo.4.��O���}
echo.
set Option==4
set /P Option=�п�J���O�s���G
cls
if %Option% LEQ 1 goto SK
if %Option%==2 goto work
if %Option%==3 goto SSH
if %Option%==4 goto Backstage
goto Main

:::::::::::::::::SK::::::::::::::::::::::

:SK
echo.
echo �п�ܥH�U���}�����f
echo.
echo 1.123
echo 2.123
echo 3.123
echo 4.123
echo 5.��^�D���
echo.
set Option==5
set /P Option=�п�J���O�s���G
if %Option% LEQ 1 goto FSystem
if %Option%==2 goto System
if %Option%==3 goto F
if %Option%==4 goto Bonnie
if %Option%==5 goto Main

:FSystem
cls
::pushd ���wUNC���| popd ��^���|
echo.�е��ݸ}�����槹����A�i����L�ƹ��ާ@
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\auto
start FuboSystemSK.exe
pause
popd
goto Main

:System
cls
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\auto 
start SystemSk.exe
echo.�е��ݸ}�����槹����A�i����L�ƹ��ާ@
pause
popd
goto Main

:F
cls
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\auto 
start FuboSk.exe
echo.�е��ݸ}�����槹����A�i����L�ƹ��ާ@
pause
popd
goto Main

:Bonnie
cls
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\auto
start BonnieSk.exe
echo.�е��ݸ}�����槹����A�i����L�ƹ��ާ@
pause
popd
goto Main

::::::::::::::::::::::::::::::::::::::::::::

:work
REM ���}�C��
cd C:\Users\%username%\AppData\Roaming\Telegram Desktop
start Telegram.exe
::Line
copy \\123\�t�γ�\MIS\09_���u�M��\���@\�C��\LineInst.exe C:\Users\%username%\Desktop
cd C:\Users\%username%\AppData\Local
md Line
cd C:\Users\%username%\AppData\Local\Line
md Data
cd C:\Users\%username%\Desktop
start LineInst.exe /s
::�I��
cd C:\Program Files\Learnpulse\Screenpresso
start Screenpresso.exe
:: �ɶ�Ū�� timeout /t 15
::VPN
cd C:\Program Files (x86)\FlyVPN
start FlyVPN.exe
pause
goto Main

:::::::::::::::::::::SSH::::::::::::::::::::::::::::

:SSH
echo.
echo �п�ܥH�U�ϥΪ�SSH
echo.
echo 1.SecureCRT
echo 2.Xshell
echo 3.��^�D���
echo.
set Option==3
set /P Option=�п�J���O�s���G
if %Option% LEQ 1 goto SecureCRT
if %Option%==2 goto Xshell
if %Option%==3 goto Main

:SecureCRT
cls
cd C:\Users\%username%\AppData\Roaming\VanDyke\Config
md Firewalls
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\�C��\CRT\Sessions
copy *.* C:\Users\%username%\AppData\Roaming\VanDyke\Config\Sessions
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\�C��\CRT\Firewalls
copy *.* C:\Users\%username%\AppData\Roaming\VanDyke\Config\Firewalls
popd
popd
pause
goto Main

:Xshell
cls
echo proxy�ۤv�[
echo type:HTTP
echo port:123
echo.
cd C:\Users\%username%\Documents
md "NetSarang Computer"
cd C:\Users\%username%\Documents\NetSarang Computer
md 6
cd C:\Users\%username%\Documents\NetSarang Computer\6
md Xshell
cd C:\Users\%username%\Documents\NetSarang Computer\6\Xshell
md Sessions
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\�C��\xsell
copy *.* C:\Users\%username%\Documents\"NetSarang Computer"\6\Xshell\Sessions
popd
pause
goto Main
:::::::::::::::::::::��x::::::::::::::::::::::::::::::

:Backstage
pushd \\123\�t�γ�\MIS\09_���u�M��\���@\auto
echo.�е��ݸ}���]���A�i����L�ާ@
cmd /c web-auto.exe
popd
pause
goto Main
