Dim oShell
Set oShell = WScript.CreateObject("WScript.Shell")
'oShell.Run "taskkill /f /im node.exe", , True
oShell.Run "powershell -windowstyle hidden -executionpolicy bypass -File C:\bat\kill-port.ps1 443", , True
oShell.Run "cmd.exe /k ""wmic process where name='nginx.exe' delete"" && exit", , True
set oShellEnv = oShell.Environment("Process")
computerName  = oShellEnv("AppData")
oShell.CurrentDirectory = computerName & "\npm\"
oShell.Run("""c:\nginx\RunHiddenConsole.exe"" C:\nginx\nginx.exe -c C:\nginx\conf\nginx.conf -p c:/nginx"), 0
Set oShell = Nothing