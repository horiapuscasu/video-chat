set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
:: start cmd /k echo Hello, World!
@echo off
nslookup myip.opendns.com resolver1.opendns.com | find "Address" >"%temp%\test1.txt"
more +1 "%temp%\test1.txt" >"%temp%\test2.txt"
del %temp%\test1.txt
set /p MyIP=<%temp%\test2.txt
del %temp%\test2.txt
set MyIP=%MyIP:~10%
:: start firefox https://%MyIP%/index_chat.php
explorer "https://%MyIP%:443/"

