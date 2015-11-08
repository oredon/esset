^+AppsKey::^+RButton

;; ------------------ Context Menu ---------------------
^+RButton::
Send, ^c
Menu, runch, Add , p
Menu, runch, Add , span
Menu, runch, Add , em
Menu, runch, Add , strong
Menu, runch, Add , anchor
	Menu, runch, Add		;separator
Menu, runch, Add , h1
Menu, runch, Add , h2
Menu, runch, Add , h3
Menu, runch, Add , h4
Menu, runch, Add , h5
Menu, runch, Add , h6
	Menu, runch, Add		;separator
Menu, runch, Add , ul
Menu, runch, Add , ulanc
Menu, runch, Add , ol
	Menu, runch, Add		;separator
Menu, runch, Add , div
Menu, runch, Add , table
Menu, runch, Add , img
Menu, runch, Show
Menu, runch, delete
Return



;; ------------------ apps list ---------------------



;; ----- P -----
tagFuncP(){
sleepFixed()
IfInString,Clipboard,`r
{
StringReplace, Clipboard, Clipboard,`r,<br />, All
}
keyStr=<p>%Clipboard%</p>
keyStr:=RegExReplace(keyStr, "<br />(`n|`r`n)</p>", "</p>$1",Limit=1)
tagAddAction(keyStr)
}

p:
tagFuncP()
Return

^+d::
tagFuncP()
Return



;; ----- SPAN -----
tagFuncSpan(){
sleepFixed()
keyStr=<span>%Clipboard%</span>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</span>", "</span>$1",Limit=1)
tagAddAction(keyStr)
}

span:
tagFuncSpan()
Return

^+s::
tagFuncSpan()
Return



;; ----- EM -----
tagFuncEm(){
sleepFixed()
keyStr=<em>%Clipboard%</em>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</em>", "</em>$1",Limit=1)
tagAddAction(keyStr)
}

em:
tagFuncEm()
Return

^+e::
tagFuncEm()
Return



;; ----- STRONG -----
tagFuncStrong(){
sleepFixed()
keyStr=<strong>%Clipboard%</strong>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</strong>", "</strong>$1",Limit=1)
tagAddAction(keyStr)
}

strong:
tagFuncStrong()
Return

^+w::
tagFuncStrong()
Return



;; ----- ANCHOR -----
tagFuncAnchor(){
sleepFixed()
keyStr=<a href="dummy">%Clipboard%</a>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</a>", "</a>$1",Limit=1)
tagAddAction(keyStr)
}

anchor:
tagFuncAnchor()
Return

^+a::
tagFuncAnchor()
Return



;; ----- H1 -----
tagFuncH1(){
sleepFixed()
keyStr=<h1>%Clipboard%</h1>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</h1>", "</h1>$1",Limit=1)
tagAddAction(keyStr)
}

h1:
tagFuncH1()
Return

^1::
tagFuncH1()
Return



;; ----- H2 -----
tagFuncH2(){
sleepFixed()
keyStr=<h2>%Clipboard%</h2>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</h2>", "</h2>$1",Limit=1)
tagAddAction(keyStr)
}

h2:
tagFuncH2()
Return

^2::
tagFuncH2()
Return



;; ----- H3 -----
tagFuncH3(){
sleepFixed()
keyStr=<h3>%Clipboard%</h3>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</h3>", "</h3>$1",Limit=1)
tagAddAction(keyStr)
}

h3:
tagFuncH3()
Return

^3::
tagFuncH3()
Return



;; ----- H4 -----
tagFuncH4(){
sleepFixed()
keyStr=<h4>%Clipboard%</h4>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</h4>", "</h4>$1",Limit=1)
tagAddAction(keyStr)
}

h4:
tagFuncH4()
Return

^4::
tagFuncH4()
Return



;; ----- H5 -----
tagFuncH5(){
sleepFixed()
keyStr=<h5>%Clipboard%</h5>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</h5>", "</h5>$1",Limit=1)
tagAddAction(keyStr)
}

h5:
tagFuncH5()
Return

^5::
tagFuncH5()
Return



;; ----- H6 -----
tagFuncH6(){
sleepFixed()
keyStr=<h6>%Clipboard%</h6>
keyStr:=RegExReplace(keyStr, "(`n|`r`n)</h6>", "</h6>$1",Limit=1)
tagAddAction(keyStr)
}

h6:
tagFuncH6()
Return

^6::
tagFuncH6()
Return



;; ----- UL -----
tagFuncUl(){
sleepFixed()
StringReplace, Clipboard, Clipboard, `r`n,</li>`n<li>, all 
keyStr=<ul>`n<li>%Clipboard%</li>`n</ul>
keyStr:=RegExReplace(keyStr, "<li></li>(`n|`r`n)", "",Limit=1)
tagAddAction(keyStr)
}

ul:
tagFuncUl()
Return

#u::
tagFuncUl()
Return



;; ----- UL Anc -----
tagFuncUlAnc(){
sleepFixed()
StringReplace, Clipboard, Clipboard, `r`n,</a></li>`n<li><a href="dummy">, all 
keyStr=<ul>`n<li><a href="dummy">%Clipboard%</a></li>`n</ul>
tagAddAction(keyStr)
}

ulanc:
tagFuncUlAnc()
Return

#i::
tagFuncUlAnc()
Return



;; ----- OL -----
tagFuncOl(){
sleepFixed()
StringReplace, Clipboard, Clipboard, `r`n,</li>`n<li>, all 
keyStr=<ol>`n<li>%Clipboard%</li>`n</ol>
keyStr:=RegExReplace(keyStr, "<li></li>(`n|`r`n)", "",Limit=1)
tagAddAction(keyStr)
}
ol:
tagFuncOl()
Return

#o::
tagFuncOl()
Return



;; ----- DIV -----
tagFuncDiv(){
sleepFixed()
keyStr=<div>`n%Clipboard%`n</div>
tagAddAction(keyStr)
}

div:
tagFuncDiv()
Return

!^+d::
tagFuncDiv()
Return



;; ----- TABLE -----
tagFuncTable(){
sleep, 400
Send,^c
tag = %clipboard%
StringReplace, tag, tag,%A_Tab%,</td><td>, all
tag:=RegExReplace(tag, "(.*)\r", "<tr><td>$1</td></tr>`n",Limit=-1)
Clipboard=<table cellspacing="0" border="1">`n<tbody>`n%tag%</tbody>`n</table>
Clipboard:=RegExReplace(Clipboard, "<tr><td>\n", "<tr><td>")
Clipboard:=RegExReplace(Clipboard, "(.*)</tbody>$", "<tr><td>$1</td></tr>`n</tbody>")
ClipWait
charset()
SetKeyDelay, 40
Send,^v
}

table:
tagFuncTable()
Return

#t::
tagFuncTable()
Return



;; ----- img -----
tagFuncImg(){
keyStr=<img src="" alt="" />
tagAddAction(keyStr)
}

img:
tagFuncImg()
Return

!i::
tagFuncImg()
Return