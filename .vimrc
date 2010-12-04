" ■全体的なやつ
" vim 互換にしない
set nocompatible

" ★とかで変にならない
set ambiwidth=double

" タブ
set ts=2

" 自動インデントのスペースの数
set sw=2

" オートインデント
"set autoindent

" オートインデントしない
set noautoindent

" ペーストモードしない
set nopaste

" ペーストでうまいこと
"set paste

" back spaceキーで色々消せる
set backspace=2

" アンドゥの回数
set undolevels=1000

" スワップファイルを作らない
set noswapfile

" 現在のモードを表示する
set showmode



" ■見た目関係
" シンタックスハイライト
syntax on

" ■色
:colorscheme delek
":colorscheme pablo

" ルーラー
set ruler

" 行番号
set nu

" コマンド行の高さ
set cmdheight=1

"ステータス行の高さ
set laststatus=2

" ステータスライン表示
:set statusline=%F%M%R%=%{&fileencoding} 

" 折り返し表示
set wrap

" カレント行ハイライト
"set cursorline
":highlight CursorLine cterm=reverse ctermbg=white
" 縦線
":set cursorcolumn



" 全角スペースの表示
:highlight ZenkakuSpace cterm=underline ctermfg=magenta guibg=darkgray
match ZenkakuSpace /　/






" ■検索関連
" 検索結果をハイライト
set hls

" インクリメンタルサーチ
set incsearch

" 大文字優先
set smartcase

" 検索で最後から最初に戻らない
set nowrapscan

" 大文字小文字関係なく
set ignorecase


" 保存と同時に行末の半角スペースを削除
function! RTrim()
%s/\s\+$//e
endfunction
autocmd BufWritePre *.html,*.css,*.js,*.inc call RTrim()


" ■キーアサイン
" 次のバッファ
nmap <C-\> :bn

" 前のバッファ
nmap <C-^</ :bp>>


" ■文字コード
" 文字コードがUTF8でうまく認識されない時
"set enc=utf8

