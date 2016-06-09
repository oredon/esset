;;; --Double Spacer --
;;; ctrl+Shift+SPACE
;;^+Space::
;;Send, {SPACE}{SPACE}
;;return
;;
;;; --Double BK-Spacer --
;;; ctrlShift+BackSpace
;;; Ctrl+Shift+H
;;^+Backspace::
;;Send, {Backspace}{Backspace}
;;return
;;^+h::
;;Send, {Backspace}{Backspace}
;;return
;;
;;;; --alternate up/down key --
;;;^;::
;;;Send, {UP}
;;;return
;;;^/::
;;;Send, {Down}
;;;return
;;
;;; --Date input shortcut--
;;; Alt+d (ex:20070707)
;;!d::
;;Send, %A_YYYY%%A_MM%%A_DD%
;;return
;;
;;; -- window close shortcut --
;;; Alt+w (normal close)
;;!q::WinClose,A
;;return
;;
;;; -- Volume up/down shortcut --
;;#WheelUp::
;;CoordMode, ToolTip, Screen
;;SoundSet, +1, Master
;;SoundGet, master_volume,MASTER
;;ToolTip, ���� %master_volume% ��, 630, 520,
;;SetTimer, RemoveToolTip, 1250
;;return
;;RemoveToolTip:
;;SetTimer, RemoveToolTip, Off
;;ToolTip
;;return
;;
;;#WheelDown::
;;CoordMode, ToolTip, Screen
;;SoundSet, -1, Master
;;SoundGet, master_volume,MASTER
;;ToolTip, ���� %master_volume% ��, 630, 520,
;;SetTimer, RemTT, 1250
;;return
;;RemTT:
;;SetTimer, RemTT, Off
;;ToolTip
;;return
;;
;;; -- Window shading --
;;#MButton::
;;WinGet,whd,ID,A
;;GoSub,sub_WindowShade
;;return
;;
;;sub_WindowShade:
;;WinGetPos,x,y,w,h,ahk_id %whd%
;;if wshade%whd% > 0
;;{
;;StringTrimLeft,h,wshade%whd%,0
;;wshade%whd% = 0
;;}
;;else
;;{
;;wshade%whd% = %h%
;;h = 27
;;}
;;WinMove,ahk_id %whd%,,%x%,%y%,%w%,%h%
;;return
;;
;;; -- Fuck'in tree txt YEAAAAAAAH!!! --
;;; alt F12
;;!F12::
;;	Send, $ tree/F > test.txt{ENTER}
;;return
;;
;;; -- Show Google Search--
;;; win+g
;;#g::
;;Gui,Add,Text,,Web Search
;;Gui,Add,Edit,x100 yp+0 vSearchWord w290,
;;Gui,Add,Button,gSearch x400 yp+0,&Search
;;Gui, Add, Radio,vGoogle x10 y30 checked,Google (&G)
;;Gui, Add, Radio,vYahoo x95 y30,Yahoo (&Y)
;;Gui, Add, Radio,vMsn x180 y30,MSN (&M)
;;Gui,Show
;;return
;;
;;GuiClose:
;;GUI, Destroy
;;return
;;
;;Search:
;;Gui,Submit,NoHide
;;bk=%ClipboardAll%
;;Clipboard=
;;Clipboard=%SearchWord%
;;ClipWait
;;if Google=1
;;Run,http://www.google.com/search?q=%Clipboard%
;;if Yahoo=1
;;Run,http://search.yahoo.co.jp/search?p=%Clipboard%
;;if Msn=1
;;Run,http://search.msn.co.jp/results.aspx?q=%Clipboard%
;;Clipboard=%bk%
;;GUI, Destroy
;;return
;;
;;; -- \/ extension --
;;#c::
;;comment=%Clipboard%
;;IfInString,clipboard,/
;;{
;;StringReplace, clipboard, clipboard,/,\, All
;;}
;;else
;;{
;;StringReplace, clipboard, clipboard,\,/, All
;;}
;;ClipWait
;;Send,^v
;;Clipboard=%comment%
;;Return
;;
;;


GetPath(str="") ; As String
;--------------------------------------------------------------------
;   �L���p�X�𒊏o���ĕԂ�(�_��������l��)
;     �ΏہF AHK v1.0.34�ȍ~    2005.10.14
;       in  str : �Ώە�����(�ȗ���:�A�N�e�B�u�E�B���h�E�^�C�g��)
;       �߂�l  �p�X��� (0:�Ȃ�)
;--------------------------------------------------------------------
{
    ifEqual str,,   WinGetTitle,str,A
;;;;;;;;;;;;�h���΍�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I;;;;;;;;;;;;;;;;;;;
IfWinActive,Adobe
{
str:=RegExReplace(str, "\(HTML\)\*|\(XHTML\)\*|\(HTML\)|\(XHTML\)", "",Limit=-1)
}
;;;;;;;;;;;;�h���΍�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I;;;;;;;;;;;;;;;;;;;
    TrimMode := A_AutoTrim
    AutoTrim,ON
    str = %str%                 ; trim

    ;�E�[������Ă����p�X�Ƃ��ėL���Ȃ�I���B����������t(���[)���`�F�b�N
    ; ��) c:\hoge.txt - �G��
    Loop,2
    {
        mode := A_index
        work := str
        loop, % strlen(work)
        {
            IfExist,%work%
            {
                AutoTrim,%TrimMode%
                return work
            }
            IfEqual mode,1,  StringTrimRight,work,work,1
            IfEqual mode,2,  StringTrimLeft, work,work,1
        }
    }

    ;�p�X�Ƃ��Ė����ȕ�����ŕ������ă`�F�b�N
    ;�� ���p�X�y�[�X�̓p�X�Ƃ��ėL���Ȃ̂Ō�p�X���Ԃ�\�����L
    SplitList := """,|;<>/*?" . A_Tab . A_Space
    Loop,Parse,SplitList
    {
        Loop,parse,str,%A_LoopField%,%A_Space% %A_Tab%
        {
            IfExist,%A_LoopField%
            {
                AutoTrim,%TrimMode%
                Return A_LoopField
            }
        }
    }

    ;�Ή����銇�ʂŃ`�F�b�N
    ;�� <>�ȊO�̓p�X�Ƃ��ėL���Ȃ̂Ō�p�X���Ԃ�\�����L
    SplitList := "<>,(),[],{},''"
    Loop,Parse,SplitList,`,
    {
        StringLeft, schar,A_LoopField,1
        StringRight,echar,A_LoopField,1
        spos := Instr(str,schar)
        if (spos) && (spos < Instr(str,echar,"",spos+1))
        {
            StringTrimLeft,work,str,  % spos
            StringLeft,    work,work, % Instr(work,echar)-1
            work = %work%                                       ; Trim
            IfExist,%work%
            {
                AutoTrim,%TrimMode%
                return work
            }
        }
    }

    AutoTrim,%TrimMode%
    Return 0
}




;;!#o::
;;    filepath := GetPath()   ; �A�N�e�B�u�E�B���h�E����p�X�𔲂��o��
;;
;;    ;�t�@�C���̂���f�B���N�g�����J��
;;    if (filepath)
;;    {
;;        FileGetAttrib,a,%filepath%
;;        ifNotInstring,a,D
;;            SplitPath, filepath, , filepath
;;         run,C:\Program Files (x86)\dyna214\DYNA.EXE %filepath%
;;	IfWinExist, DYNA
;;	#WinActivateForce
;;	WinActivate
;;	WinWaitActive, DYNA,
;;
;;	tmppath:=RegExReplace(filepath, "D:\\works\\", "",Limit=1)
;;	StringLeft, toppath, tmppath, 1
;;	
;;	send,{RIGHT}
;;	send,l
;;	send,`\`\umeume`\vh`\
;;	send,%toppath%
;;	send,`\
;;	send,%tmppath%
;;	sleep, 150
;;	send,{ENTER}
;;    }
;;Return
;;
;;!o::
;;    filepath := GetPath()   ; �A�N�e�B�u�E�B���h�E����p�X�𔲂��o��
;;
;;    ;�t�@�C���̂���f�B���N�g�����J��
;;    if (filepath)
;;    {
;;        FileGetAttrib,a,%filepath%
;;        ifNotInstring,a,D
;;            SplitPath, filepath, , filepath
;;         run,C:\Program Files (x86)\dyna214\DYNA.EXE %filepath%
;;    }
;;Return
