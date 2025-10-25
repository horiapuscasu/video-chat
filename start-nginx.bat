@ECHO OFF
ECHO Starting PHP FastCGI...
set PATH=C:\PHP;%PATH%
c:\nginx\RunHiddenConsole.exe C:\nginx\nginx.exe -c C:\nginx\conf\nginx.conf -p c:/nginx
:: c:\nginx\RunHiddenConsole.exe C:\PHP\php-cgi.exe -b 127.0.0.1:9123
