Dim RunKcptun
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")

currentPath = fso.GetFile(Wscript.ScriptFullName).ParentFolder.Path & "\"

exeConfig = "./small/python.exe run.py"

logFile = "kcptun.log"

cmdLine = "cmd /c " & currentPath & exeConfig 

WshShell.Run cmdLine

Set fso = Nothing

WScript.quit