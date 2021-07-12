"nvim
let mapleader=" "
"开启高亮
syntax on
"Theme
set background=dark
color deus
"vim 响应
set updatetime=100
"vim 剪切板
set clipboard=unnamedplus
"开启数字
set nu
"相对数字
set relativenumber
"信息栏
set shortmess+=c
"vim 缓冲区
set hidden
"输入线
set cursorline
"补全
set wildmenu
"搜索
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set autoindent
noremap <LEADER><CR> :nohlsearch<CR>
noremap K 5k
noremap J 5j
noremap H 5h
noremap L 5l

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

