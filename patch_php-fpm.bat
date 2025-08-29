set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

:: your code here
cscript replace_text.vbs "%AppData%\npm\node_modules\php-fpm\index.js" "HTTP_AUTHORIZATION: req.headers['authorization']," ""
cscript replace_text.vbs "%AppData%\npm\node_modules\php-fpm\index.js" "HTTP_USER_AGENT: req.headers['user-agent']," ""
cscript replace_text.vbs "%AppData%\npm\node_modules\php-fpm\index.js" "GATEWAY_INTERFACE: 'CGI/1.1'," "GATEWAY_INTERFACE: 'CGI/1.1',HTTP_AUTHORIZATION: req.headers['authorization'],HTTP_USER_AGENT: req.headers['user-agent'],"
