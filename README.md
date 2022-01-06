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
set rnu # Set specific row number
set numberwidth=1 # Reduce index columns width
set nowrap # No wrap
set noswapfile # No swap file
set nobackup
set incsearch # Include search
set ignorecase # Search words ignoring case
set clipboard=unnamedplus # Copy information into clipboard
set encoding=utf-8 # International characters
set cursorline
set termguicolors # Change color theme
set colorcolumn=120 # Acivate limit column
set completeopt-=preview " For No Previews

highlight ColoColumn ctermbg=0 guibg=lightgrey # Change limit column color

```

### Plugin initialization

```bash

call plug#begin()
# Optional, you can change default root
call plug#begin(~/.local/share/nvim/plugged)

# Plugins list

set encoding=UTF-8

call plug#end()

```

### Pligins list

```bash

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/rghifarit53/tokyonight-vim' " Tokyo night theme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion - This pluging needs node
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

```
