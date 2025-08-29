set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

:: your code here
netsh advfirewall firewall add rule name="NetBIOS UDP Port 5938" dir=in action=allow protocol=UDP localport=5938
netsh advfirewall firewall add rule name="NetBIOS UDP Port 5938" dir=out action=allow protocol=UDP localport=5938
netsh advfirewall firewall add rule name="NetBIOS TCP Port 5938" dir=in action=allow protocol=TCP localport=5938
netsh advfirewall firewall add rule name="NetBIOS TCP Port 5938" dir=out action=allow protocol=TCP localport=5938
