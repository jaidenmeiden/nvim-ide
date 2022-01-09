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

syntax on                                        # Syntax activation
syntax enable                                    # Enable syntax processing

# Mouse {{{
set mouse=a                                      # Include mouse interaction

# }}} Mouse

# UI Config {{{
set hidden
set number                                       # Show line number
set relativenumber
set numberwidth=1                                # Reduce index columns width
set showcmd                                      # Show command in bottom bar
set cursorline                                   # Highlight current line
set wildmenu                                     # Visual autocomplete for command menu
set showmatch                                    # Highlight matching brace
set laststatus=2                                 # Window will always have a status line
set nobackup
set noswapfile                                   # Disable creating swap files entirely 
set colorcolumn=120                              # Activate limit column
highlight ColoColumn ctermbg=0 guibg=lightgrey   # Change limit column color
set completeopt-=preview                         # For No Previews

# }}} UI Config

# Spaces & Tabs {{{
set sw=2                                         # Reduce tabulations width
set tabstop=4                                    # Number of visual spaces per TAB
set softtabstop=4                                # Number of spaces in tab when editing
set shiftwidth=4                                 # Number of spaces to use for autoindent
set expandtab                                    # Set spaces like tabulations (Tabs are space)
set smarttab                                     # Set smart tab
set autoindent                                   # Uses the indent from the previous line
set copyindent                                   # Copy the structure of the existing lines indent when 
                                                 # autoindenting a new line.
set smartindent                                  # Is like 'autoindent' but also recognizes some syntax to
		                                         # increase/reduce the indent where appropriate.

# }}} Spaces & Tabs

# Clipboard {{{
set clipboard+=unnamedplus                       # Copy information into clipboard

# }}} Clipboard

# Write behaviour {{{
set rnu                                          # Set specific row number
set nowrap                                       # No wrap

# }}} Write behaviour

# Search behaviour {{{
set incsearch                                    # Search as characters are entered (Include search)
set hlsearch                                     # Highlight matche
set ignorecase                                   # Ignore case when searching
set smartcase                                    # Ignore case if search pattern is lower case
                                                 # Case-sensitive otherwise

# Set Ag as the grep command
if executable('ag')
    # Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

# }}} Search behaviour

# Folding {{{
set foldenable
set foldlevelstart=10                            # Default folding level when buffer is opened
set foldnestmax=10                               # Maximum nested fold
set foldmethod=syntax                            # Fold based on indentation

# }}} Folding

# Errors {{{
set noerrorbells                                 # Ignore error noise

# }}} Errors

# Colors {{{
set background=dark
set termguicolors                                # Change color theme

# }}} Colors

set encoding=utf-8                               # International characters

```

#### Notes

*How does `smarttab` actually works?*

As it is written in help, when `smarttab` is off, `softtabstop` is used everywhere including line start. However, if `softtabstop` is equal to `-1` then it is set to `shiftwidth` anyway. Hence there'll be no difference in setting `smarttab` on or off.

In other words, `smarttab` is only meaningful if both set `expandtab` and `softtabstop` differs from `shiftwidth`. But normally it's not the case and we don't need `smarttab`.

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
Plug 'morhetz/gruvbox' # gruvbox is heavily inspired by badwolf, jellybeans and solarized.
Plug 'ayu-theme/ayu-vim' # Theme works only if VIM supports
Plug 'joshdick/onedark.vim' # A dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals
Plug 'abra/vim-obsidian' # Obsidian is a colorscheme for Vim

# Visual
Plug 'yggdroot/identline' # Put line to indicate identation
Plug 'vim-airline/vim-airline' # SLean & mean status/tabline for vim that's light as air. Status bar
Plug 'vim-airline/vim-airline-themes' # This is the official theme repository for vim-airline
Plug 'ryanoasis/vim-devicons' # Database developer Icons
Plug 'lilydjwg/colorizer' # A Vim plugin to colorize all text in the form #rgb, #rgba, #rrggbb, #rrgbbaa, rgb(...), rgba(...)
Plug 'leafgarland/typescript-vim' # Activate typescript syntax

# Git integration
Plug 'mhinz/vim-signify' # Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file
Plug 'tpope/vim-fugitive' # Fugitive is the premier Vim plugin for Git.
Plug 'tpope/vim-rhubarb' # If fugitive.vim is the Git, rhubarb.vim is the Hub.
Plug 'tpope/vim-surround' # Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-commentary' # For Commenting gcc & gc & gcap
Plug 'junegunn/gv.vim' # A git commit browser

# Functionality
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } # Thumbnail file browser. fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf.vim' # Include fzf into neovim
Plug 'preservim/nerdtree' # The NERDTree is a file system explorer for the Vim editor
Plug 'christoomey/vim-tmux-navigator' # This plugin provides the mappings which allow you to move between Vim panes and tmux splits seamlessly.
Plug 'KabbAmine/vCoolor.vim' # Simple color selector/picker for Vim
Plug 'easymotion/vim-easymotion' # EasyMotion provides a much simpler way to use some motions in vim. 
Plug 'rust-lang/rust.vim' # This is a Vim plugin that provides Rust file detection, syntax highlighting, formatting, Syntastic integration, and more.
Plug 'cespare/vim-toml' # Vim syntax for TOML. TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.
Plug 'vim-python/python-syntax' 3 Python syntax highlighting for Vim

# Code modification
Plug 'ddollar/nerdcommenter' # vim global plugin that provides easy code commenting
Plug 'honza/vim-snippets' # This repository contains snippets files for various programming languages.This repository contains snippets files for various programming languages.
Plug 'sirver/ultisnips' # UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them.
Plug 'jiangmiao/auto-pairs' # Insert or delete brackets, parens, quotes in pair.
Plug 'mattn/emmet-vim' # emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'neoclide/coc.nvim', {'branch': 'release'} # Auto Completion - This pluging needs node

# Pending clasification
Plug 'lifepillar/pgsql.vim' # PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'ap/vim-css-color' # CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' # Retro Scheme
Plug 'tc50cal/vim-terminal' # Vim Terminal
Plug 'preservim/tagbar' # Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' # CTRL + N for multiple cursors

```

### Themes

[Themes database](https://vimcolorschemes.com/)
