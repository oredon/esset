;;; -- change utf8/sjis win+space --
;;#^Space::
;;{
;;IniRead,encode,%A_ScriptDir%\markup\config.ini,encode,encode
;;if encode = 0
;;{
;;IniWrite,1,%A_ScriptDir%\markup\config.ini,encode,encode
;;CoordMode, ToolTip, Screen
;;ToolTip, UTF-8 Mode,
;;SetTimer, rm_utftip, 700,1,1
;;return
;;rm_utftip:
;;SetTimer, rm_utftip, Off
;;ToolTip
;;return
;;}
;;
;;else if encode = 1
;;{
;;IniWrite,0,%A_ScriptDir%\markup\config.ini,encode,encode
;;CoordMode, ToolTip, Screen
;;ToolTip, Shift-Jis Mode,
;;SetTimer, rm_sjistip, 700,1,1
;;return
;;rm_sjistip:
;;SetTimer, rm_sjistip, Off
;;ToolTip
;;return
;;}
;;}
;;return