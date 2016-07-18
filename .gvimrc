"画面
set lines=60 "縦幅 default:24
set columns=120 " 横幅 default:80

"set guioptions-=m "メニューバーの表示切り替え
"set guioptions-=T "ツールバーの表示切り替え

"IME関連
set noimdisableactivate "入力モード「ひらがな」で改行すると「英字」モードに切り替わる問題の防止

"色テーマ
set background=dark
colorscheme solarized

"透過
autocmd FocusGained * set transparency=10
autocmd FocusLost * set transparency=20

