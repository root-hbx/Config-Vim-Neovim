" Clearly this is my configuration of Vim, and it's suitable for mac!
" There are some confs with the path of plugins and you have to switch them to your own paths.

" 0. 显示设置（优化）
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"let g:ycm_python_binary_path = '/opt/homebrew/bin/python3'
set mouse=a                                 "可使用鼠标控制
set encoding=utf-8
let &t_ut=''
set expandtab                               "缩进相关
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set list
"set listchars=tab:...?
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start              "row(k+1)行首 回退至 row(k)行末
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"    "三种模式下光标显示不一样
set laststatus=2                            "最下面的状态栏宽度是2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" |endif


let mapleader = " "             "将键盘<LEADER>主动设置为空格键<SPACE>
syntax on                       "语法高亮
set number                      "设置行号
set norelativenumber            "设置相对行号（off）
set cursorline                  "行所在下线
set wrap
set showcmd
set wildmenu                    "命令关键字自索引
set nohlsearch                  "搜索高亮
exec "nohlsearch"
set incsearch                   "搜索过程直接高亮
set ignorecase                  "大小写忽略(searching)
set smartcase                   "大小写自动识别(searching)


" 1. 将hjkl重定向给四个方向键
noremap <Up> k
noremap <Down> j
noremap <Left> h
noremap <Right> l


" 2. 常见键位映射更改
" 1) shift + s <=> (S) => 实现保存 <=> :w<CR> (<CR>是回车键)
" 2) s 原：删除所在字符并自开启insert模式 => none
" 3) shift + q <=> (Q) => 实现退出 <=> :q<CR>
" 4) shift + r <=> (R) => 刷新.vimrc_File <=> :source $MYVIMRC<CR>
" map S :w<CR>
map s <nop>
map Q :wq<CR>
map R :source $MYVIMRC<CR>

" 3. search jumping
noremap = nzz                         "= refers to 跳到下一个搜索目标
noremap - Nzz                         "- refers to 返回上一个搜索目标
noremap <LEADER><CR> :nohlsearch<CR>  "<SPACE>+<return> refers to 撤销搜索印记


" 4. 实现高级分屏和跳转
" 高级分屏
map s<Right> :set splitright<CR>:vsplit<CR>
map s<Left> :set nosplitright<CR>:vsplit<CR>
map s<Up> :set nosplitbelow<CR>:split<CR>
map s<Down> :set splitbelow<CR>:split<CR>
" 鼠标跳转
map q<Right> <C-w>l
map q<Left>  <C-w>h
map q<Up>    <C-w>k
map q<Down>  <C-w>j
" 设置当前分屏大小
map w<Right> :vertical resize-5<CR>
map w<Left>  :vertical resize+5<CR>
map w<Up> :res -5<CR>
map w<Down> :res +5<CR>
" 分屏在“上下”&“左右”之间切换
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K


"5. 设置打开一个新的标签页
map tu :tabe<CR>
map ty :-tabnext<CR>
map ti :+tabnext<CR>


" end: set plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

call plug#end()



" end+: colorBar
color snazzy
let g:SnazzyTransparent = 1

" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/opt/homebrew/bin/python3"
let g:ycm_python_binary_path = "/opt/homebrew/bin/python3"


" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']


" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>


" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === vim-indent-guide
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === vim-signiture
" ===
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtline'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

