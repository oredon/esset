; ------------------ charset function ------------------
charset(){
{
IniRead,encode,%A_ScriptDir%\markup\config.ini,encode,encode
if encode=1
{
Transform,Clipboard,Unicode,%Clipboard%
}
}
}

; ------------------ XHTML.ahk function for hotstrings  ------------------
currentWindowFixed(){
WinGetActiveTitle, OutputVar 
WinWaitActive,%OutputVar%
}

hotStrAction(Val){
bk=%Clipboard%
sleep, 330
Clipboard=%Val%
ClipWait
charset()
SetKeyDelay, 35
Send,^v
Clipboard=%bk%
}


; ------------------ XHTML.ahk function for rclick onepush  ------------------
sleepFixed(){
global
tmp = %Clipboard%
clipwait
sleep, 300
Send,^c
}

tagAddAction(Val){
global
Clipboard = ""
clipwait

Clipboard=%Val%
ClipWait
charset()
SetKeyDelay, 30
Send,^v

Clipboard = ""
Clipboard = %tmp%
ClipWait
tmp =""

}
