#Hotstring EndChars `t
#Hotstring Z

; -- comment --
#v::
comment=%Clipboard%
Clipboard=<!-- %comment% -->
ClipWait
Send,^v
Clipboard=%comment%
Return



; -- add br tag --
+^v::
comment=%Clipboard%
IfInString,clipboard,`r
{
StringReplace, clipboard, clipboard,`r,<br />, All
}
ClipWait
Send,^v
Clipboard=%comment%
Return



; -- external link --
#a::
comment=%Clipboard%
Clipboard=<a href="%Clipboard%" target="_blank"></a>
ClipWait
Send,^v
Loop,4
{
Send,{Left}
}
Clipboard=%comment%
Return



; -- txt drive --
#.::
comment=%Clipboard%
Clipboard=&gt;
ClipWait
Send,^v
Clipboard=%comment%
Return



#,::
comment=%Clipboard%
Clipboard=&lt;
ClipWait
Send,^v
Clipboard=%comment%
Return



#6::
comment=%Clipboard%
Clipboard=&amp;
ClipWait
Send,^v
Clipboard=%comment%
Return



+NumpadAdd::
comment=%Clipboard%
Clipboard=&nbsp;
ClipWait
Send,^v
Clipboard=%comment%
Return


; -- current Directory --
::dir::
currentWindowFixed()

filepath := GetPath()
;ファイルのあるディレクトリをファイヤー
if (filepath)
{
FileGetAttrib,a,%filepath%
ifNotInstring,a,D
SplitPath, filepath, , filepath
filepath:=RegExReplace(filepath, "(.*)\\docs", "",Limit=-1)
filepath:=RegExReplace(filepath, "(.*)\\svn-docs", "",Limit=-1)
filepath:=RegExReplace(filepath, "\\", "/",Limit=-1)

keyStr=%filepath%
hotStrAction(keyStr)
}
Return

; -- head parts --
::title::
currentWindowFixed()
keyStr=<title></title>
hotStrAction(keyStr)
Loop,8
{
Send,{Left}
}
Return



::head::
currentWindowFixed()
keyStr=<head>`n`n</head>
hotStrAction(keyStr)
Loop,8
{
Send,{Left}
}
Return



::body::
currentWindowFixed()
keyStr=<body>`n`n</body>
hotStrAction(keyStr)
Loop,8
{
Send,{Left}
}
Return



::script::
currentWindowFixed()
keyStr=<script type="" src=""></script>
hotStrAction(keyStr)
Return



; -- paragraph etc --
::p::
currentWindowFixed()
keyStr=<p></p>
hotStrAction(keyStr)
Loop,4
{
Send,{Left}
}
Return



::em::
currentWindowFixed()
keyStr=<em></em>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::str::
currentWindowFixed()
keyStr=<strong></strong>
hotStrAction(keyStr)
Loop,9
{
Send,{Left}
}
Return



::span::
currentWindowFixed()
keyStr=<span></span>
hotStrAction(keyStr)
Loop,7
{
Send,{Left}
}
Return



::adr::
currentWindowFixed()
keyStr=<address></address>
hotStrAction(keyStr)
Loop,10
{
Send,{Left}
}
Return



::a::
currentWindowFixed()
keyStr=<a href="dummy"></a>
hotStrAction(keyStr)
Loop,4
{
Send,{Left}
}
Return

::blk::
currentWindowFixed()
keyStr=target="_blank"
hotStrAction(keyStr)
Return



::noscript::
currentWindowFixed()
keyStr=<noscript></noscript>
hotStrAction(keyStr)
Loop,11
{
Send,{Left}
}
Return



::q::
currentWindowFixed()
keyStr=<q></q>
hotStrAction(keyStr)
Loop,4
{
Send,{Left}
}
Return



::abbr::
currentWindowFixed()
keyStr=<abbr title=""></abbr>
hotStrAction(keyStr)
Loop,9
{
Send,{Left}
}
Return



::abbr::
currentWindowFixed()
keyStr=<abbr title=""></abbr>
hotStrAction(keyStr)
Loop,9
{
Send,{Left}
}
Return



::acronym::
currentWindowFixed()
keyStr=<acronym title=""></acronym>
hotStrAction(keyStr)
Loop,12
{
Send,{Left}
}
Return



::code::
currentWindowFixed()
keyStr=<code></code>
hotStrAction(keyStr)
Loop,7
{
Send,{Left}
}
Return



::del::
currentWindowFixed()
keyStr=<del></del>
hotStrAction(keyStr)
Loop,6
{
Send,{Left}
}
Return



::dfn::
currentWindowFixed()
keyStr=<dfn></dfn>
hotStrAction(keyStr)
Loop,6
{
Send,{Left}
}
Return



::ins::
currentWindowFixed()
keyStr=<ins title="" datetime=""></ins>
hotStrAction(keyStr)
Loop,20
{
Send,{Left}
}
Return



::kbd::
currentWindowFixed()
keyStr=<kbd></kbd>
hotStrAction(keyStr)
Loop,6
{
Send,{Left}
}
Return



::pre::
currentWindowFixed()
keyStr=<pre></pre>
hotStrAction(keyStr)
Loop,6
{
Send,{Left}
}
Return



::samp::
currentWindowFixed()
keyStr=<samp></samp>
hotStrAction(keyStr)
Loop,7
{
Send,{Left}
}
Return



::var::
currentWindowFixed()
keyStr=<var></var>
hotStrAction(keyStr)
Loop,6
{
Send,{Left}
}
Return



; -- Headline --
::h1::
currentWindowFixed()
keyStr=<h1></h1>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::h2::
currentWindowFixed()
keyStr=<h2></h2>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::h3::
currentWindowFixed()
keyStr=<h3></h3>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::h4::
currentWindowFixed()
keyStr=<h4></h4>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::h5::
currentWindowFixed()
keyStr=<h5></h5>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::h6::
currentWindowFixed()
keyStr=<h6></h6>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



; -- compornent --
::div::
currentWindowFixed()
keyStr=<div></div>
hotStrAction(keyStr)
Loop,6
{
Send,{Left}
}
Return



::blc::
currentWindowFixed()
keyStr=<blockquote></blockquote>
hotStrAction(keyStr)
Loop,13
{
Send,{Left}
}
Return



; -- List --
::ul::
currentWindowFixed()
keyStr=<ul>`n<li>XXXXXXX</li>`n</ul>
hotStrAction(keyStr)
Return



::ulanc::
currentWindowFixed()
keyStr=<ul>`n<li><a href="dummy">XXXXXXXX</a></li>`n</ul>
hotStrAction(keyStr)
Return



::ulima::
currentWindowFixed()
keyStr=<ul>`n<li><a href="dummy"><img src="XXXXX" alt="" /></a></li>`n</ul>
hotStrAction(keyStr)
Return



::ol::
currentWindowFixed()
keyStr=<ol>`n<li>XXXXXXXX</li>`n</ol>
hotStrAction(keyStr)
Return



::li::
currentWindowFixed()
keyStr=<li></li>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::dl::
currentWindowFixed()
keyStr=<dl>`n<dt>XXXXXXXX</dt>`n<dd>XXXXXXXX</dd>`n</dl>
hotStrAction(keyStr)
Return



::dt::
currentWindowFixed()
keyStr=<dt></dt>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::dd::
currentWindowFixed()
keyStr=<dd></dd>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



; -- Table --
::tbl::
currentWindowFixed()
keyStr=<table cellspacing="0" border="1">`n<thead>`n<tr>`n<th>header</th>`n<th>header</th>`n</tr>`n</thead>`n<tbody>`n<tr>`n<th>header</th>`n<td>text</td>`n</tr>`n</tbody>`n</table>
hotStrAction(keyStr)
Return



::thd::
currentWindowFixed()
keyStr=<thead></thead>
hotStrAction(keyStr)
Loop,8
{
Send,{Left}
}
Return



::tbd::
currentWindowFixed()
keyStr=<tbody></tbody>
hotStrAction(keyStr)
Loop,8
{
Send,{Left}
}
Return



::th::
currentWindowFixed()
keyStr=<th></th>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::tr::
currentWindowFixed()
keyStr=<tr></tr>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::td::
currentWindowFixed()
keyStr=<td></td>
hotStrAction(keyStr)
Loop,5
{
Send,{Left}
}
Return



::caption::
currentWindowFixed()
keyStr=<caption></caption>
hotStrAction(keyStr)
Loop,10
{
Send,{Left}
}
Return



::colgroup::
currentWindowFixed()
keyStr=<colgroup span="" width="">
hotStrAction(keyStr)
Loop,11
{
Send,{Left}
}
Return



; -- img map --
::map::
currentWindowFixed()
keyStr=<map name="">`n`n</map>
hotStrAction(keyStr)
Return



; -- form --
::form::
currentWindowFixed()
keyStr=<form method="" action="" id="" name="">`n`n</form>
hotStrAction(keyStr)
Return



::textarea::
currentWindowFixed()
keyStr=<textarea name="" rows="" cols=""></textarea>
hotStrAction(keyStr)
Return



::select::
currentWindowFixed()
keyStr=<select name="">`n`n</select>
hotStrAction(keyStr)
Return



::optgroup::
currentWindowFixed()
keyStr=<optgroup label="">`n`n</optgroup>
hotStrAction(keyStr)
Return



::option::
currentWindowFixed()
keyStr=<option value="" selected="selected"></option>
hotStrAction(keyStr)
Return



::fieldset::
currentWindowFixed()
keyStr=<fieldset></fieldset>
hotStrAction(keyStr)
Loop,11
{
Send,{Left}
}
Return



::legend::
currentWindowFixed()
keyStr=<legend></legend>
hotStrAction(keyStr)
Loop,9
{
Send,{Left}
}
Return



::label::
currentWindowFixed()
keyStr=<label for="" accesskey=""></label>
hotStrAction(keyStr)
Loop,23
{
Send,{Left}
}
Return



; -- future, pulldown menu properties --
::cla::
currentWindowFixed()
keyStr=class=""
hotStrAction(keyStr)
Send,{Left}
Return



::id::
currentWindowFixed()
keyStr=id=""
hotStrAction(keyStr)
Send,{Left}
Return



::usemap::
currentWindowFixed()
keyStr=usemap=""
hotStrAction(keyStr)
Send,{Left}
Return



::href::
currentWindowFixed()
keyStr=href=""
hotStrAction(keyStr)
Send,{Left}
Return



::name::
currentWindowFixed()
keyStr=name=""
hotStrAction(keyStr)
Send,{Left}
Return



::alt::
currentWindowFixed()
keyStr=alt=""
hotStrAction(keyStr)
Send,{Left}
Return



::shape::
currentWindowFixed()
keyStr=shape=""
hotStrAction(keyStr)
Send,{Left}
Return



::coords::
currentWindowFixed()
keyStr=coords=""
hotStrAction(keyStr)
Send,{Left}
Return



::src::
currentWindowFixed()
keyStr=src=""
hotStrAction(keyStr)
Send,{Left}
Return



::type::
currentWindowFixed()
keyStr=type=""
hotStrAction(keyStr)
Send,{Left}
Return



::value::
currentWindowFixed()
keyStr=value=""
hotStrAction(keyStr)
Send,{Left}
Return



::size::
currentWindowFixed()
keyStr=size=""
hotStrAction(keyStr)
Send,{Left}
Return



::action::
currentWindowFixed()
keyStr=action=""
hotStrAction(keyStr)
Send,{Left}
Return



::method::
currentWindowFixed()
keyStr=method=""
hotStrAction(keyStr)
Send,{Left}
Return



::for::
currentWindowFixed()
keyStr=for=""
hotStrAction(keyStr)
Send,{Left}
Return



::accesskey::
currentWindowFixed()
keyStr=accesskey=""
hotStrAction(keyStr)
Send,{Left}
Return



::selected::
currentWindowFixed()
keyStr=selected="selected"
hotStrAction(keyStr)
Send,{Left}
Return



::rows::
currentWindowFixed()
keyStr=rows=""
hotStrAction(keyStr)
Send,{Left}
Return



::cols::
currentWindowFixed()
keyStr=cols=""
hotStrAction(keyStr)
Send,{Left}
Return



::rowspan::
currentWindowFixed()
keyStr=rowspan=""
hotStrAction(keyStr)
Send,{Left}
Return



::colspan::
currentWindowFixed()
keyStr=colspan=""
hotStrAction(keyStr)
Send,{Left}
Return



::content::
currentWindowFixed()
keyStr=content=""
hotStrAction(keyStr)
Send,{Left}
Return



::rel::
currentWindowFixed()
keyStr=rel=""
hotStrAction(keyStr)
Send,{Left}
Return



::media::
currentWindowFixed()
keyStr=media=""
hotStrAction(keyStr)
Send,{Left}
Return

