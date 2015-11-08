; -- br tag --
+NumpadEnter::
Send, <br />
Return



; -- DOCTYPE_XHTML1.0 Strict --
::docst::
currentWindowFixed()
keyStr=<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">`n<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">`n<head>`n<meta http-equiv="content-type" content="text/html; charset=utf-8" />`n<meta http-equiv="content-style-type" content="text/css" />`n<meta http-equiv="content-script-type" content="text/javascript" />`n<meta http-equiv="content-language" content="ja" />`n<meta name="author" content="XXXXXXXXXXXXXXXXXXXX" />`n<meta name="robots" content="index, follow" />`n<meta name="keywords" content="XXXXXXXXXXXXXXXXXXXX" />`n<meta name="description" content="XXXXXXXXXXXXXXXXXXXX" />`n<meta name="copyright" content="Copyright (C) XXXXXXXXXXXXXXXXXXXX Co., Ltd. All Rights Reserved." lang="en" xml:lang="en" />`n<title>XXXXXXXXXXXXXXXXXXXX</title>`n<link rel="start" type="text/html" href="/index.html" />`n<link rel="contents" type="text/html" href="/sitemap" />`n<link rel="stylesheet" type="text/css" media="screen,print" href="XXXXXXXXXXXXXXXXXXXX" />`n<link rel="stylesheet" type="text/css" media="print" href="XXXXXXXXXXXXXXXXXXXX" />`n<script type="text/javascript" src="XXXXXXXXXXXXXXXXXXXX"></script>`n</head>`n<body>`n`n</body>`n</html>
hotStrAction(keyStr)
Return



; -- DOCTYPE_XHTML1.0 Transitional --
::doctr::
currentWindowFixed()
keyStr=<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">`n<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">`n<head>`n<meta http-equiv="content-type" content="text/html; charset=utf-8" />`n<meta http-equiv="content-style-type" content="text/css" />`n<meta http-equiv="content-script-type" content="text/javascript" />`n<meta http-equiv="content-language" content="ja" />`n<meta name="author" content="XXXXXXXXXXXXXXXXXXXX" />`n<meta name="robots" content="index, follow" />`n<meta name="keywords" content="XXXXXXXXXXXXXXXXXXXX" />`n<meta name="description" content="XXXXXXXXXXXXXXXXXXXX" />`n<meta name="copyright" content="Copyright (C) XXXXXXXXXXXXXXXXXXXX Co., Ltd. All Rights Reserved." lang="en" xml:lang="en" />`n<title>XXXXXXXXXXXXXXXXXXXX</title>`n<link rel="start" type="text/html" href="/index.html" />`n<link rel="contents" type="text/html" href="/sitemap" />`n<link rel="stylesheet" type="text/css" media="screen,print" href="XXXXXXXXXXXXXXXXXXXX" />`n<link rel="stylesheet" type="text/css" media="print" href="XXXXXXXXXXXXXXXXXXXX" />`n<script type="text/javascript" src="XXXXXXXXXXXXXXXXXXXX"></script>`n</head>`n<body>`n`n</body>`n</html>
hotStrAction(keyStr)
Return



::html::
currentWindowFixed()
keyStr=<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">`n`n</html>
hotStrAction(keyStr)
Return



::meta http::
currentWindowFixed()
keyStr=<meta http-equiv="" content="" />
hotStrAction(keyStr)
Return



::meta name::
currentWindowFixed()
keyStr=<meta name="" content="" />
hotStrAction(keyStr)
Return



::link::
currentWindowFixed()
keyStr=<link rel="" type="" href="" media="" />
hotStrAction(keyStr)
Return



::img::
currentWindowFixed()
keyStr=<img src="" alt="" />
hotStrAction(keyStr)
Return



::hr::
currentWindowFixed()
keyStr=<hr />
hotStrAction(keyStr)
Return



::area::
currentWindowFixed()
keyStr=<area href="" shape="" alt="" coords="" />
hotStrAction(keyStr)
Return



::col::
currentWindowFixed()
keyStr=<col span="" width="" />)
hotStrAction(keyStr)
Return



::input::
currentWindowFixed()
keyStr=<input type="" name="" value="" />
hotStrAction(keyStr)
Return



::obj::
currentWindowFixed()
keyStr=<object data="XXXXXXXXXX" type="application/x-shockwave-flash" width="XXX" height="XXX" id="XXX">`n<param name="movie" value="common/img/cm.swf" />`n</object>
hotStrAction(keyStr)
Return



::param::
currentWindowFixed()
keyStr=<param name="" value="" />
hotStrAction(keyStr)
Return



::jquerystart::
currentWindowFixed()
keyStr=;(function($, window, document, undefined) {`n$(function(){`n`n});`n}(jQuery, this, this.document));
hotStrAction(keyStr)
Return
