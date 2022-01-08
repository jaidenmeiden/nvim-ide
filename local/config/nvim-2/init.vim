syntax on

set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set numberwidth=1
set number
set rnu
set nowrap
set noswapfile
set nobackup
set incsearch
set clipboard=unnamedplus
set encoding=utf-8
set ignorecase
set cursorline

set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox' " gruvbox is heavily inspired by badwolf, jellybeans and solarized.
Plug 'ayu-theme/ayu-vim' " Theme works only if VIM supports
Plug 'joshdick/onedark.vim' " A dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals
Plug 'abra/vim-obsidian' " Obsidian is a colorscheme for Vim

" Visual
Plug 'yggdroot/identline' " Put line to indicate identation
Plug 'vim-airline/vim-airline' " SLean & mean status/tabline for vim that's light as air. Status bar
Plug 'vim-airline/vim-airline-themes' " This is the official theme repository for vim-airline
Plug 'ryanoasis/vim-devicons' " Database developer Icons
Plug 'lilydjwg/colorizer' " A Vim plugin to colorize all text in the form #rgb, #rgba, #rrggbb, #rrgbbaa, rgb(...), rgba(...)
Plug 'leafgarland/typescript-vim' " Activate typescript syntax

" Git integration
Plug 'mhinz/vim-signify' " Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file
Plug 'tpope/vim-fugitive' " Fugitive is the premier Vim plugin for Git.
Plug 'tpope/vim-rhubarb' " If fugitive.vim is the Git, rhubarb.vim is the Hub.
Plug 'tpope/vim-surround' " Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-commentary' " For Commenting gcc & gc & gcap
Plug 'junegunn/gv.vim' " A git commit browser

" Functionality
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Thumbnail file browser. fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf.vim' " Include fzf into neovim
Plug 'preservim/nerdtree' " The NERDTree is a file system explorer for the Vim editor
Plug 'christoomey/vim-tmux-navigator' " This plugin provides the mappings which allow you to move between Vim panes and tmux splits seamlessly.
Plug 'KabbAmine/vCoolor.vim' " Simple color selector/picker for Vim
Plug 'easymotion/vim-easymotion' " EasyMotion provides a much simpler way to use some motions in vim. 
Plug 'rust-lang/rust.vim' " This is a Vim plugin that provides Rust file detection, syntax highlighting, formatting, Syntastic integration, and more.
Plug 'cespare/vim-toml' " Vim syntax for TOML. TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.
Plug 'vim-python/python-syntax' " Python syntax highlighting for Vim

" Code modification
Plug 'ddollar/nerdcommenter' " vim global plugin that provides easy code commenting
Plug 'honza/vim-snippets' " This repository contains snippets files for various programming languages.This repository contains snippets files for various programming languages.
Plug 'sirver/ultisnips' " UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them.
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'mattn/emmet-vim' " emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion - This pluging needs node

call plug#end()

let mapleader = "," " Leader key on ily 

" Theme
let g:python_highloght_all = 1
set termguicollors
set nackground=dark
let ayucolor="dark"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

" Restart neovim with F5 key on visual and normal mode
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>
" Open neovim configuration file
nnoremap <silent>e :e $MYVIMRC<CR>

" Disable arrow key to use <h> <j> <k> <l>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Save changes with leader key selected
nnoremap <leader>w :w<CR>
" Resize panels
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

" Open terminal panel
vnoremap <c-t> :split<CR>:ter<CR>
nnoremap <c-t> :split<CR>:ter<CR>

" Move to next buffer with <leader> + k
nnoremap <leader>k :bnext<CR>

" Move to previous buffer with <leader> + j
nnoremap <leader>j :bprevious<CR>

" Close actual buffer with <leader> + q
nnoremap <leader>q :delete<CR>

" Create a new window with <leader> + t
nnoremap <leader>t :tabe<CR>

" Make a vertical split with <leader> + vs
nnoremap <leader>vs :vsp<CR>

" Make a horizontal split with <leader> + sp
nnoremap <leader>sp :sp<CR>

" ****** Plugins configuration ******

" FZF configuration
let g:fzf_preview_window = 'right:40%'
nnoremap <c-p> :Files<CR>
nnoremap <c-g> :GitGiles<CR>
" use current git repo/file director with ctrl p
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

" NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" File exploring mapping
let g:NERDTreeChDirMode = 2 " Change actual directory to actual node father
map <F2> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = 'v'
"let g:NERDTreeDirArrowExpandable = '▶'
"let g:NERDTreeDirArrowCollapsible = '▼'

function! s:check_back_space() abort
  let col == col('.') -1
  return !col || getline('.')[col -1] =~# '\s'
endfunction

" Vim devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"Airline status bar mapping
let g:airline#extensions#tabline#enabled = 1 " Show open buffers (Like tabs)
let g:airline#extensions#tabline#fnamemod = ':t' " Show only file name
let g:airline_powerline_fonts = 1 " Modify separators to be triangle-shape
let g:airline_theme = 'tomorrow' " Set airline theme

" Signify
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text  = 1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gK

" If you like colors instead
highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

nnoremap / /a<DEL>

" Trigger configuration. Do not used <tab> if you use https://gitgub.com/Valloric/YouCompleteMe
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window
let g:UltiSnipsEditSplit="vertical"

" vim emmet configutation
let g:user_emmet_leader_key='<C-Z>'

" easymotion
nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1

" Rust configuration
let g:rustfmt_autosave = 1

" Prettier configuration for vim
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

