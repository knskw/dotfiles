"      ___                       ___           ___           ___
"     /\__\          ___        /\__\         /\  \         /\  \
"    /:/  /         /\  \      /::|  |       /::\  \       /::\  \
"   /:/  /          \:\  \    /:|:|  |      /:/\:\  \     /:/\:\  \
"  /:/__/  ___      /::\__\  /:/|:|__|__   /::\~\:\  \   /:/  \:\  \
"  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\ /:/\:\ \:\__\ /:/__/ \:\__\
"  |:|  |/:/  / /\/:/  /    \/__/~~/:/  / \/_|::\/:/  / \:\  \  \/__/
"  |:|__/:/  /  \::/__/           /:/  /     |:|::/  /   \:\  \
"   \::::/__/    \:\__\          /:/  /      |:|\/__/     \:\  \
"    ~~~~         \/__/         /:/  /       |:|  |        \:\__\
"                               \/__/         \|__|         \/__/


"---------------------------
" Start Neobundle Settings.
"---------------------------
filetype plugin indent off

" bundleで管理するディレクトリを指定
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#begin(expand('~/.vim/bundle/'))
endif

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"#####プラグイン#####
NeoBundle 'itchyny/lightline.vim' "見やすいステータスライン
NeoBundle 'wakatime/vim-wakatime' "作業ログ

"補完
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

"インデント可視化
NeoBundle 'Yggdroot/indentLine'
let g:indentLine_faster = 1
nmap <silent><Leader>i :<C-u>IndentLinesToggle<CR>

"行末のスペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'
if neobundle#tap('vim-trailing-whitespace')
    " uniteでスペースが表示されるので、設定でOFFにする。
    let g:extra_whitespace_ignored_filetypes = ['unite']
endif

"ディレクトリツリーからファイルを選択
NeoBundle 'Shougo/vimfiler.vim'
nnoremap <leader>e :VimFilerExplore -split -winwidth=30 -find -no-quit<Cr>

"if等の終了宣言を自動挿入
NeoBundleLazy 'tpope/vim-endwise', {
  \ 'autoload' : { 'insert' : 1,}}

"true/falseを+/-で切り替え
NeoBundle 'AndrewRadev/switch.vim'
nmap + :Switch<CR>
nmap - :Switch<CR>


"カラースキーム
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'jpo/vim-railscasts-theme'

call neobundle#end()

filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれる
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------


"#####表示設定#####
set number "行番号表示
set title "編集中のファイル名を表示
set cursorline "カーソル行を強調表示
set showmatch "括弧入力時の対応する括弧を表示

"Tab関係
set tabstop=4 "Tab文字を画面上で何文字に展開するか
set expandtab
set shiftwidth=4 "インデントの幅
set softtabstop=0 "Tabキーを押したときに挿入される空白の量

"入力関係
set backspace=indent,eol,start "BSでなんでも消せるようにする
set autoindent
set smartindent

"ファイルタイプ関係
syntax on "コードの色分け

"ノーマルモード時だけ；と：を入れ替える（us配列用）
nnoremap ; :
nnoremap : ;

"#####検索設定#####
set incsearch
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set hlsearch "検索文字をハイライト表示
set wrapscan "検索時に最後まで行ったら最初に戻る

