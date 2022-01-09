syntax on

" Mouse {{{
set mouse=a
" }}} Mouse

" UI config {{{
set number
set relativenumber
set cursorline
set nobackup
set noswapfile
set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey
" }}} UI config

" Spaces & Tabs {{{
set sw=2
set smarttab
set expandtab
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set numberwidth=1
set shiftwidth=4
" }}} Spaces & Tabs

" Write behaviour {{{
set rnu
set nowrap
" }}} Write behaviour

" Search behaviour {{{
set incsearch
set ignorecase
" }}} Search behaviour

" Clipboard {{{
set clipboard+=unnamedplus
" }}} Clipboard

" Errors {{{
set noerrorbells
" }}} Errors

" Colors {{{
set termguicolors
" }}} Colors

set encoding=utf-8

call plug#begin()

" Themes
Plug 'ghifarit53/tokyonight-vim' " Tokyo night theme    

" Visual

"
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion - This pluging needs node
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

set encoding=UTF-8

call plug#end()

let mapleader = " "  

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

" Theme
set completeopt-=preview " For No Previews

" colorscheme jellybeans
colorscheme tokyonight

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
