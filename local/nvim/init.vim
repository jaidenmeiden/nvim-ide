syntax on " Syntax activation

set number " Show number line
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a " Include mouse interaction
" New configuration options
set noerrorbells " Ignore error noise
set sw=2 " Reduce tabulations width
set expandtab " Set spaces like tabulations
set smartindent " Set smart indent
set rnu " Set specific row number
set numberwidth=1 " Reduce index columns width
set nowrap " No wrap
set noswapfile " No swap file
set nobackup
set incsearch " Include search
set ignorecase " Search words ignoring case
set clipboard=unnamedplus " Copy information into clipboard
set encoding=utf-8 " International characters
set cursorline
set termguicolors " Change color theme
set colorcolumn=120 " Acivate limit column
" Change limit column color
highlight ColoColumn ctermbg=0 guibg=lightgrey

" Plugins manager - github.com/junegunn/vim-plug

" Default root to save plugins: ~/.local/share/nvim/plugged
call plug#begin()
 
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'ghifarit53/tokyonight-vim'
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion - This pluging needs node
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

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
