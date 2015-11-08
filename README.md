# esset
(windows only) emmet like coding assist tool. This tool can use any editor.

## これは？
* emmetみたいな div と入力して TABキーを押すと divタグに変換される、といったコーディングを便利にする機能をemmet対応以外のエディタでも（それこそブラウザのinputやtextarea上でさえも）使えるようにすることを目指したツールです。
* [AutoHotKey](http://www.autohotkey.com/)ベースで作り、exe化したものです。
* 実はかなり昔に作ったもの（2007年くらい？）
* cssは未対応です。HTMLのみ。

## 起動方法
* esset.exe を起動すると常駐します　たまにウィルス対策ソフトに「これはウィルスだ！」と言われますが、そのようなシステムを壊すようなPGは盛り込んでません（念のため）

## ファイル構成
| ファイル | 概要 |
|:-----------|:------------|
| esset.exe | 実行ファイル　使うだけならこのファイル以外見る必要なし |
| basic.ahk | AutoHotKeyファイル markup以外の機能を記述するファイル デフォルトではほとんどが;でコメントアウトされている |
| common.ahk | html5でもxhtmlでも同じ記法のショートコードが記述 |
| XHTML1.0.ahk | xhtml用のショートコード集 |
| clipfunction.ahk | クリップボード機能を提供 |
| rclickmk.ahk | shift+右クリック時の挙動を制御 |
| equipment.ahk | その昔、古い一部のエディタではペースト時に文字コードを指定する必要があったその名残 |

## 使い方
### emmetみたいな使い方
emmet同様、いろんなタグに対応している。が、div.hogehogeとかp>a>imgのようなクラス指定や入れ子タグの生成はできず、あくまで単発のタグのみの出力が可能な点はemmetに劣る

* p
* div
* em
* img
* str -> strongタグ
* script
* link
* span
* adr -> addressタグ
* a
* blk -> target=＿blankショートコード
* noscript
* q
* abbr
* acronym
* title
* head
* body
* code
* pre
* del
* dfn
* ins
* kbd
* samp
* var
* h1 - h6
* blc -> blockquoteタグ
* ul
* ulanc -> ul>li>a
* ulima -> ul>li>>a>img
* ol
* dl
* dt
* dd
* tbl -> tableタグ
* thd -> theadタグ
* tbd -> tbodyタグ
* tr
* th
* td
* caption
* colgroup
* map
* form
* textarea
* input
* select
* optgroup
* option
* fieldset
* legend
* label
* cla -> class
* id
* dir -> エディタで開いているファイルのパスを出力する（エディタによっては動かないためおまけ程度。秀丸で動作確認）

### 右クリックメニュー
shiftを押しながら右クリックをすると

* p
* span
* em

のようなメニューが出てくるので選択すると、クリップボードの中身がそのタグで囲まれる。また、テキスト選択状態のときに同じ操作をすると、選択されたテキストがそのタグで囲まれる。

### タグで囲むショートカットキー
右クリックメニューと同じこと（＋α）がショートカットキーで実行できます

| ショートカットキー | タグ |
|:-----------|:------------|
| ctrl + 1 - 6 | h1 - h6 |
| ctrl + shift + d | p(改行にはbrタグが自動挿入される) |
| ctrl + shift + alt + d | div |
| ctrl + shift + e | em |
| ctrl + shift + s | span |
| ctrl + shift + w | strong |
| ctrl + shift + a | a |
| windowsキー + u | ul>li |
| windowsキー + i | ul>li>a |
| windowsキー + o | ol>li |
| windowsキー + t | table |
| windowsキー + v | コメントタグ化 |
| windowsキー + a | a |
| windowsキー + . | &gt; |
| windowsキー + , | &lt; |
| windowsキー + 6 | &amp; |

-----------------------------

### 制作
oredon(Taisuke)

#### WEBサイト
[http://oredon.kidukilab.com/](http://oredon.kidukilab.com/)

#### twitter
[https://twitter.com/oredon_taisuke](https://twitter.com/oredon_taisuke)

:::::::::::::::::

#### HTML5 で3Dゲーム作りました
[http://is.kidukilab.com/](http://is.kidukilab.com/)

:::::::::::::::::

#### HTML5 で2Dゲーム作りました
[http://oredon.kidukilab.com/](http://oredon.kidukilab.com/)

:::::::::::::::::
