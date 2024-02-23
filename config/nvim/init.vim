set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set nocompatible
set title
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wildmode=longest,list
set noswapfile
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set relativenumber
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set cc=120 " Show at 80 column a border for good code style
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim
set scrolloff=999
highlight ColorColumn ctermbg=lightcyan guibg=lightcyan

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'bignimbus/pop-punk.vim'
Plug 'honza/vim-snippets'
Plug 'kosayoda/nvim-lightbulb'
Plug 'mhinz/vim-startify'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mg979/vim-xtabline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme pop-punk

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

:let g:NERDTreeShowLineNumbers=1
:autocmd BufEnter NERD_* setlocal rnu
