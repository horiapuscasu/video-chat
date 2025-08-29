Dim oShell
Set oShell = WScript.CreateObject("WScript.Shell")
'oShell.Run "taskkill /f /im node.exe", , True
oShell.Run "powershell -windowstyle hidden -executionpolicy bypass Restart-Computer", , True
Set oShell = Nothing