#Include WinServ.ahk
#noEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#persistent
#singleInstance, force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DetectHiddenWindows On

; write current date and time to text file
; path :=[Dir:\Folder\textfile.txt] ;Where the text file you wish to put the Date/Time is stored. Timer. Updates every 1000 Milliseconds, 1 Second = 10000 Milliseconds
sleepTime := 1000
path := "\time.txt"
; I use this to display current time / date in OBS software

SetTimer, WriteTime, %sleepTime%

WriteTime:
  content := ""
  FormatTime, content, , MM-dd-yyyy hh:mm:ss:tt
  file := FileOpen(path, "w")
  file.Write(content)
  file.Close()
  ; MsgBox, %content%
return

;Hotkey or modifier Key:
; != ALT Key
; ^=Ctrl : see Autohotkey help documentation for special keys 
; https://www.autohotkey.com/docs/Hotkeys.htm#Symbols
; https://www.autohotkey.com/docs/KeyList.htm

;ALT + 1 Runs specified program & so on.
!1::
Run, H:\0BACKUP ONLY\NewTaskManager\procexp64.exe
return

!2::
Run ""
return

;ALT +3, Uses Taskmanager to immediately kill the Chrome.exe process
!3::
Runwait, taskkill /im chrome.exe /f
return

!4::
Run, ""
return

;ALT+5 immediately kills & restarts explorer.exe, if it fails you have to restart explorer.exe from Taskmanager > Run > explorer.exe
!5::
Runwait, taskkill /im explorer.exe /f
Run, explorer.exe
return

!6::
Runwait, cmd /c "ipconfig /flushdns"
return

!7::
Runwait, cmd /c "netsh interface ip delete arpcache"
return

!8::
Run, ""
return

!9::
Run, ""
return
