@echo off
title MIS小工具
:Main
cls
echo create by 阿駿
echo.
echo 請選擇以下功能
echo.
echo 1.Skype
echo 2.必開每日
echo 3.SSH
echo.4.後臺全開
echo.
set Option==4
set /P Option=請輸入指令編號：
cls
if %Option% LEQ 1 goto SK
if %Option%==2 goto work
if %Option%==3 goto SSH
if %Option%==4 goto Backstage
goto Main

:::::::::::::::::SK::::::::::::::::::::::

:SK
echo.
echo 請選擇以下欲開的窗口
echo.
echo 1.123
echo 2.123
echo 3.123
echo 4.123
echo 5.返回主選單
echo.
set Option==5
set /P Option=請輸入指令編號：
if %Option% LEQ 1 goto FSystem
if %Option%==2 goto System
if %Option%==3 goto F
if %Option%==4 goto Bonnie
if %Option%==5 goto Main

:FSystem
cls
::pushd 指定UNC路徑 popd 返回路徑
echo.請等待腳本執行完畢後再進行鍵盤滑鼠操作
pushd \\123\系統部\MIS\09_員工專區\阿駿\auto
start FuboSystemSK.exe
pause
popd
goto Main

:System
cls
pushd \\123\系統部\MIS\09_員工專區\阿駿\auto 
start SystemSk.exe
echo.請等待腳本執行完畢後再進行鍵盤滑鼠操作
pause
popd
goto Main

:F
cls
pushd \\123\系統部\MIS\09_員工專區\阿駿\auto 
start FuboSk.exe
echo.請等待腳本執行完畢後再進行鍵盤滑鼠操作
pause
popd
goto Main

:Bonnie
cls
pushd \\123\系統部\MIS\09_員工專區\阿駿\auto
start BonnieSk.exe
echo.請等待腳本執行完畢後再進行鍵盤滑鼠操作
pause
popd
goto Main

::::::::::::::::::::::::::::::::::::::::::::

:work
REM 必開每日
cd C:\Users\%username%\AppData\Roaming\Telegram Desktop
start Telegram.exe
::Line
copy \\123\系統部\MIS\09_員工專區\阿駿\每日\LineInst.exe C:\Users\%username%\Desktop
cd C:\Users\%username%\AppData\Local
md Line
cd C:\Users\%username%\AppData\Local\Line
md Data
cd C:\Users\%username%\Desktop
start LineInst.exe /s
::截圖
cd C:\Program Files\Learnpulse\Screenpresso
start Screenpresso.exe
:: 時間讀取 timeout /t 15
::VPN
cd C:\Program Files (x86)\FlyVPN
start FlyVPN.exe
pause
goto Main

:::::::::::::::::::::SSH::::::::::::::::::::::::::::

:SSH
echo.
echo 請選擇以下使用的SSH
echo.
echo 1.SecureCRT
echo 2.Xshell
echo 3.返回主選單
echo.
set Option==3
set /P Option=請輸入指令編號：
if %Option% LEQ 1 goto SecureCRT
if %Option%==2 goto Xshell
if %Option%==3 goto Main

:SecureCRT
cls
cd C:\Users\%username%\AppData\Roaming\VanDyke\Config
md Firewalls
pushd \\123\系統部\MIS\09_員工專區\阿駿\每日\CRT\Sessions
copy *.* C:\Users\%username%\AppData\Roaming\VanDyke\Config\Sessions
pushd \\123\系統部\MIS\09_員工專區\阿駿\每日\CRT\Firewalls
copy *.* C:\Users\%username%\AppData\Roaming\VanDyke\Config\Firewalls
popd
popd
pause
goto Main

:Xshell
cls
echo proxy自己加
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
pushd \\123\系統部\MIS\09_員工專區\阿駿\每日\xsell
copy *.* C:\Users\%username%\Documents\"NetSarang Computer"\6\Xshell\Sessions
popd
pause
goto Main
:::::::::::::::::::::後台::::::::::::::::::::::::::::::

:Backstage
pushd \\123\系統部\MIS\09_員工專區\阿駿\auto
echo.請等待腳本跑完再進行鍵盤操作
cmd /c web-auto.exe
popd
pause
goto Main
