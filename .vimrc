set encoding=utf-8
scriptencoding utf-8

"====================================
" Plugin
"====================================
call plug#begin('~/.vim/plugged')

" -- Font
Plug 'lambdalisue/nerdfont.vim'
Plug 'ryanoasis/vim-devicons'
" -- Color scheme
Plug 'cocopon/iceberg.vim'
" StatusLineで使用
Plug 'arcticicestudio/nord-vim'
" -- Appearance
Plug 'itchyny/lightline.vim'
" Plug 'rickhowe/diffchar.vim'
" Plug 'preservim/vim-indent-guides'
" -- Window
Plug 'simeji/winresizer'
" -- Movement
Plug 'easymotion/vim-easymotion'
" -- git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" -- Filer
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" -- fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" -- LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" -- Lint
Plug 'dense-analysis/ale'
" -- Common to each language
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'wolandark/vim-live-server'
" -- HTML
Plug 'othree/html5.vim'
Plug 'AndrewRadev/tagalong.vim'
" -- Sass
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
" -- JavaScript
" JavaScript syntax
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
" EJS syntax
Plug 'nikvdp/ejs-syntax'
" JSON
Plug 'elzr/vim-json'
" -- PHP
Plug 'captbaritone/better-indent-support-for-php-with-html'

call plug#end()

"====================================
" Basic setting
"====================================
set backspace=indent,eol,start " BackSpaceで削除ができない場合に追加
set number " 行番号を表示
set relativenumber " カーソル行からの相対的な行番号を表示
set linespace=2
set wrap " 画面の端で行を折り返す
set display=lastline " 省略されずに表示
set title " 編集中ファイル名の表示
set vb t_vb= " beep音を止めて、画面の点滅もさせない
set noerrorbells " エラーメッセージの表示時にビープを鳴らさない
set cmdheight=2 " メッセージ表示欄を2行確保
set laststatus=2 " ステータスを表示
set ambiwidth=double " ○や□などの文字が重ならないようにする
set fenc=utf-8 " 文字コードをUFT-8に設定
set list " タブ、空白、改行を可視化
set listchars=tab:▸\ ,eol:↲,extends:»,precedes:«,nbsp:% " 不可視文字の指定
set guioptions+=a " yでコピーした時にクリップボードに入る
set clipboard=unnamed,autoselect " ヤンクでクリップボードにコピー
set ambiwidth=double " 全角文字専用の設定

" -- Save
set nobackup " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない
set autoread " 編集中のファイルが変更されたら自動で読み直す
set hidden " バッファが編集中でもその他のファイルを開けるように
set nowritebackup " ファイルを上書きする前にバックアップを作ることを無効化

" -- Command complement
set showcmd " 入力中のコマンドをステータスに表示する
set wildmode=list:longest " コマンドラインの補完
set pumheight=10 " 補完メニューの高さ

" -- Tab / Indent
set expandtab " Tabを半角スペースに変換
set tabstop=2 " 行頭以外のTab文字の表示幅（スペースいくつ分）
set softtabstop=2 " タブキー押下時に挿入される文字幅を指定
set breakindent " 折り返した際のインデント位置を合わせる
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する。smartindentは、autoindentが設定済みの場合に限って有効
set shiftwidth=2 " 行頭でのTab文字の表示幅

set splitbelow " 新しいウィンドウを下に開く
set splitright " 新しいウィンドウを右に開く

" -- Cursor
set ruler " カーソル位置を表示
set cursorline " カーソル行を強調表示
" ビジュアルモードでのヤンク後にカーソルを選択前の位置に戻さない
vnoremap y y`>
if has('vim_starting')
  let &t_SI .= "\e[5 q" " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_EI .= "\e[1 q" " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_SR .= "\e[3 q" " 置換モード時に非点滅の下線タイプのカーソル
endif

" -- Mouse
set mouse=a " 4モードでマウス操作が可能
set ttymouse=xterm2 " ホイールの使用が可能

" -- Search
set ignorecase " 大文字、小文字の区別をしない
set smartcase " 大文字が含まれている場合は区別する
set wrapscan " 検索時に最後まで行ったら最初に戻る
set hlsearch " 検索語をハイライト表示
set incsearch " 検索文字列入力時に順次対象文字列にヒットさせる

" -- Jump
set showmatch matchtime=1 " 括弧入力時の対応する括弧を表示
source $VIMRUNTIME/macros/matchit.vim " ノーマルモード時に「%」で対応するカッコにジャンプ

" -- Complement
set completeopt=menuone,noinsert " 補完ウィンドウが表示された時に最初の1件目を選択状態にする

" カラースキーム設定
augroup vimrc
  autocmd!
augroup END

autocmd vimrc ColorScheme *
  \ highlight DiffAdd ctermfg=NONE guifg=NONE |
  \ highlight DiffDelete ctermfg=NONE guifg=NONE |
  \ highlight DiffText ctermfg=NONE guifg=NONE |
  \ highlight DiffChange ctermfg=NONE guifg=NONE |
  \ highlight IdeographicSpace ctermbg=24 guibg=#6b7089
  " 行末の空白に色を付ける
  \ highlight ExtraWhitespace ctermbg=red guibg=red
autocmd vimrc VimEnter,WinEnter * match IdeographicSpace /　/
autocmd vimrc FileType html,jsp,asp,php,xml,perl syntax sync minlines=500 maxlines=1000

" -- Syntax highlight
syntax enable
set termguicolors
colorscheme iceberg
" colorscheme nord
set background=dark

if has('gui_running')
  set guioptions+=a
endif

"====================================
" Key mapping
"====================================
let mapleader = "\<Space>"

" -- キーの無効化
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
nnoremap s <Nop>

" -- jキーを二度押しでESCキー
inoremap <silent> jj <ESC>
inoremap <silent> っｊ <ESC>
inoremap <silent> ｊｊ <ESC>

" -- Vimの終了
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" -- Redo
nnoremap U <C-r>

" -- 全選択
noremap <Leader>a ggVG

" カーソル位置から行末までをコピー
nnoremap Y y$

" カーソルを表示行で移動
nnoremap k gk
nnoremap j gj

" -- Scroll
nnoremap zk zt
nnoremap zj zb

" -- 検索ハイライトを消す
noremap <C-n> :noh<ESC>

" -- ウィンドウの分割
noremap ss <C-w>s
noremap sv <C-w>v

" -- ウィンドウ間のカーソル移動
noremap sk <C-w>k
noremap sj <C-w>j
noremap sh <C-w>h
noremap sl <C-w>l

" -- Tab
nnoremap gh gT
nnoremap gl gt

"------------------------------------
" ryanoasis/vim-devicons
"------------------------------------

"------------------------------------
" vim-gitgutter
"------------------------------------
set updatetime=100 " 更新が反映されるまでの時間を短く設定
set signcolumn=yes " 未修正の状態でもvim-gitgutterラインを常に表示させて画面のズレを無くす

"------------------------------------
" mattn/emmet-vim
"------------------------------------
" インデントの問題を回避
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<meta name=\"description\" content=\"\">\n"
\              ."\t<meta name=\"author\" content=\"\">\n"
\              ."\t<meta name=\"og:type\" content=\"\">\n"
\              ."\t<meta name=\"og:title\" content=\"\">\n"
\              ."\t<meta name=\"og:image\" content=\"\">\n"
\              ."\t<meta name=\"og:site_name\" content=\"\">\n"
\              ."\t<title></title>\n"
\              ."\t<link rel=\"canonical\" href=\"\">\n"
\              ."\t<link rel=\"stylesheet\" href=\"\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

"------------------------------------
" lambdalisue/fern.vim
"------------------------------------
nnoremap <Leader>n :Fern .<CR>

let g:fern_disable_startup_warnings = 1 " 警告メッセージを無効にする
let g:fern#default_hidden=1 " 隠しファイルを表示する
let g:fern#renderer = "nerdfont" "アイコン表示

"------------------------------------
" junegunn/fzf.vim
"------------------------------------
nnoremap <Leader>p :Files<CR>

"------------------------------------
" neoclide/coc.nvim
"------------------------------------
" -- autocomplete
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

highlight CocSearch ctermfg=181 guifg=#e2a478

autocmd CursorHold * silent call CocActionAsync('highlight')

"------------------------------------
" vim-easy-align
"------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"------------------------------------
" ale
"------------------------------------
let g:ale_fix_on_save = 1

" -- 特定のツールのみを使用
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

"------------------------------------
" JulesWang/css.vim
" cakebaker/scss-syntax.vim
"------------------------------------
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-

"------------------------------------
" heavenshell/vim-jsdoc
"------------------------------------
" キーマッピングの有効化
let g:jsdoc_enable_key_mappings = 1

" lehreのパスを指定
let g:jsdoc_tool_path_lehre = '/usr/local/bin/lehre' " lehreの実行ファイルのパスに置き換える

"------------------------------------
" nikvdp/ejs-syntax
"------------------------------------
autocmd BufNewFile,BufRead *.ejs set filetype=ejs
autocmd BufNewFile,BufRead *._ejs set filetype=ejs

function! s:DetectEjs()
  if getline(1) =~ '^#!.*\<ejs\>'
    set filetype=ejs
  endif
endfunction
autocmd BufNewFile,BufRead * call s:DetectEjs()

"------------------------------------
" itchyny/lightline.vim
"------------------------------------
if !has('gui_running')
  set t_Co=256
endif

set noshowmode "ステータスライン下の`-- INSERT --`表示を非表示にする
set statusline^=%{coc#status()}

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"------------------------------------
" preservim/vim-indent-guides
"------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
