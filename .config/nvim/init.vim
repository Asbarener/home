"vim-plug if
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
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
"换行
set wrap
set showcmd
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

"TAB 补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
  "inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
"nmap <silent> <LEADER>= <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"var rename
nmap <leader>rn <Plug>(coc-rename)
"coc.nvim
"let g:coc_global_extensions = [
"	\ 'coc-json',
"	\ 'coc-vimlsp']


"plug.vim
call plug#begin('~/.config/nvim/plugged')
"theme_deus
Plug 'theniceboy/vim-deus'
"coc.nvim
Plug 'neoclide/coc.nvim'
call plug#end()



