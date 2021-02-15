call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'tell-k/vim-browsereload-mac'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jlebensold/reilly_restaurants'
Plug 'dense-analysis/ale'
Plug 'captbaritone/better-indent-support-for-php-with-html'
call plug#end()


"----------------------------------------------------------
" nerdtree
"----------------------------------------------------------
" ショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" The NERD Treeのウィンドウだけが残るような場合にVimを終了
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"----------------------------------------------------------
" vim-airline
"----------------------------------------------------------
" タブの有効化
let g:airline#extensions#tabline#enabled = 1
" タブの切り替え
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
" タブ番号の表示
let g:airline#extensions#tabline#buffer_idx_mode = 1
" テーマを設定
let g:airline_theme = 'papercolor'
" 挿入モードからノーマルモードへの切り替えの遅延をなくす
set ttimeoutlen=50


"------------------------------------
" emmet-vim
"------------------------------------
" lang属性を"ja"に設定
let g:user_emmet_settings = {
\ 'variables' : {
\  'lang' : "ja"
\ }
\}
" tabで展開
autocmd FileType html,css,scss imap <buffer><expr><tab>
      \ emmet#isExpandable() ? "\<plug>(emmet-expand-abbr)" :
      \ "\<tab>"


"------------------------------------
" vim-closetag
"------------------------------------
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


"------------------------------------
" vim-browsereload-mac
"------------------------------------
nmap <Space>bc :ChromeReloadStart<CR>
nmap <Space>bC :ChromeReloadStop<CR>
nmap <Space>bf :FirefoxReloadStart<CR>
nmap <Space>bF :FirefoxReloadStop<CR>
nmap <Space>bs :SafariReloadStart<CR>
nmap <Space>bS :SafariReloadStop<CR>
nmap <Space>bo :OperaReloadStart<CR>
nmap <Space>bO :OperaReloadStop<CR>
nmap <Space>ba :AllBrowserReloadStart<CR>
nmap <Space>bA :AllBrowserReloadStop<CR>


"------------------------------------
" vim-easy-align
"------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


"------------------------------------
" vim-gitgutter
"------------------------------------
" 更新が反映されるまでの時間を短く設定
set updatetime=100
" 未修正の状態でもvim-gitgutterラインを常に表示させて画面のズレを無くす
set signcolumn=yes


"------------------------------------
" html5.vim
"------------------------------------
" イベントハンドラー属性のサポートを無効
let g:html5_event_handler_attributes_complete = 0
" RDFa属性のサポートを無効
let g:html5_rdfa_attributes_complete = 0
" microdata属性のサポートを無効
let g:html5_microdata_attributes_complete = 0
" WAI-ARIA属性のサポートを無効
let g:html5_aria_attributes_complete = 0


"------------------------------------
" vim-css3-syntax
"------------------------------------
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END


"------------------------------------
" ale
"------------------------------------
let g:ale_fix_on_save = 1
" 特定のツールのみを使用
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1


" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" ファイルを上書きする前にバックアップを作ることを無効化
set nowritebackup
" vim の矩形選択で文字が無くても右へ進める
set virtualedit=block
" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start
" 全角文字専用の設定
set ambiwidth=double
" ビジュアルモードでのヤンク後にカーソルを選択前の位置に戻さない
vnoremap y y`>
" 削除キーでyankしない
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch matchtime=1
" Vimの「%」を拡張する
source $VIMRUNTIME/macros/matchit.vim
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" カラースキーム
colorscheme iceberg
" 背景を透明化
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" メッセージ表示欄を2行確保
set cmdheight=2
" ステータス行を常に表示
set laststatus=2
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
" 画面の端で行を折り返す
set wrap
" 省略されずに表示
set display=lastline
" 折り返した際のインデント位置を合わせる
set breakindent
" 補完メニューの高さ
set pumheight=10
" yでコピーした時にクリップボードに入る
set guioptions+=a
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" バッファスクロール
set mouse=a
" コマンドモードの補完
set wildmenu
" カーソル形状
if has('vim_starting')
  " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_SI .= "\e[6 q"
  " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_EI .= "\e[2 q"
  " 置換モード時に非点滅の下線タイプのカーソル
  let &t_SR .= "\e[4 q"
endif


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅を指定
set softtabstop=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" キーバインド
inoremap <silent> jj <ESC>
