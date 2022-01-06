# Neovim

[Web page](https://neovim.io/)
[Install instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim)


## What is Newovim?

Neovim is a Vim-based text editor engineered for extensibility and usability, to encourage new applications and contributions.


### Basic commands (Newvim)

* Enter **normal** mode: `Esc` or `Ctrl + c`
* To move: `h` &#8592; `j` &#8595; `k` &#8593; `l` &#8594;
* To displacement: `w` **Start of next word** `e` **End of next word** `b` **Start of previous word** `0` **Start of line** `$` **End of line**
* To delete letters: `x` **Delete selected letter** `X` **Delete previous letter**
* To delete words (`d` is used with a second parameter): `d + (w | e | b | 0 | $)` **Combination determines removal behaviour**  `d + d` **Delete the entire line**
* To delete tail: `D` **Remove following words**

* To undo and redo: `u` and `Ctrl + u`
* To save files: `:w`
* To open files: `:e` [File name]

* Enter **insert** mode: `i` **At start** `a` **At end** `I` **At line start** `A` **At line end**
* To delete and enter **insert** mode: `c + (w | e | b | 0 | $)` **Combination determines removal behaviour** `C` **Remove following words** `s` **Delete selected letter** `S` **Delete the entire line**

* Enter **visual** mode (Select multiple line): `v`
* Copy to clipboard: `y`
* Cut to clipboard: `x`
* Paste from clipboard: `p` **Paste to next line** `P` **Paste to previuos line**


### Plugin manager

[Plugin manager](https://github.com/junegunn/vim-plug)


``` bash # Unix, Linux



```

Default root to save plugins: `~/.local/share/nvim/plugged`

#### Instructions

``` bash

:PlugClean
:PlugInstall
:UpdateRemotePlugins

```

### Configuration options

```bash

# Instructions

syntax on # Syntax activation

set number # Show number line
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

set mouse=a # Include mouse interaction
set noerrorbells # Ignore error noise
set sw=2 # Reduce tabulations width
set expandtab # Set spaces like tabulations
set smartindent # Set smart indent
set numberwidth=1 # Reduce index columns width
set rnu # Set specific row number
set nowrap # No wrap
set noswapfile # No swap file
set nobackup
set incsearch # Include search
set clipboard=unnamedplus # Copy information into clipboard
set encoding=utf-8 # International characters
set ignorecase # Search words ignoring case
set cursorline

set termguicolors # Change color theme

set colorcolumn=120 # Acivate limit column
set completeopt-=preview # For No Previews

highlight ColoColumn ctermbg=0 guibg=lightgrey # Change limit column color

```

### Plugin initialization

```bash

call plug#begin()
# Optional, you can change default root
call plug#begin('~/.local/share/nvim/plugged')

#####################################
# Plugins list
Plug 'http://github.com/zzzzzzz/zzzzzzz'

Or

Plug 'zzzzzz/zzzzzzz'
#####################################

set encoding=UTF-8

call plug#end()

```

### Pligins list

[Plugin list](https://vimawesome.com/)

```bash
# Themes
Plug 'rghifarit53/tokyonight-vim' # Tokyo night theme
Plug 'morhetz/gruvbox' 
Plug 'ayu-theme/ayu-vim' 
Plug 'joshdick/onedark.vim'
Plug 'abra/vim-obsidian'

# Visual
Plug 'yggdroot/identline'
Plug 'vim-airline/vim-airline' # Status bar
Plug 'vim-airline/vim-airline-themes' # 
Plug 'ryanoasis/vim-devicons' # Developer Icons
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'

# Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround' # Surrounding ysw
Plug 'tpope/vim-commentary' # For Commenting gcc & gc
Plug 'junegunn/gv.vim'

# Functionality
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'KabbAmine/vCoolor.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'vim-python/python-syntax'

# Code completion
Plug 'ddollar/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.vim', {'branch': 'release'} # Auto Completion - This pluging needs node

# Pending clasification
Plug 'preservim/nerdtree' # NerdTree
Plug 'lifepillar/pgsql.vim' # PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'ap/vim-css-color' # CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' # Retro Scheme
Plug 'tc50cal/vim-terminal' # Vim Terminal
Plug 'preservim/tagbar' # Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' # CTRL + N for multiple cursors

```

### Themes

[Themes database](https://vimcolorschemes.com/)
