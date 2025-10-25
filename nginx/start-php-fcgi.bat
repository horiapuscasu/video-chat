@ECHO OFF
ECHO Starting PHP FastCGI...
set PATH=C:\PHP;%PATH%
c:\nginx\RunHiddenConsole.exe C:\nginx\nginx.exe
:: c:\nginx\RunHiddenConsole.exe C:\PHP\php-cgi.exe -b 127.0.0.1:9123
