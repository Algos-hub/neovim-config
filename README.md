# Neovim config files

This is my config files for my personal Neovim installation.

The following plugins are being used:

Auto-pairing (parenthesis, brackets, quotes, etc...): ['windwp/nvim-autopairs'](https://github.com/windwp/nvim-autopairs)\
Icons: ['nvim-tree/nvim-web-devicons'](https://github.com/nvim-tree/nvim-web-devicons)\
Git wrapper: ['tpope/vim-fugitive'](https://github.com/tpope/vim-fugitive)\
Git buffer integration: ['lewis6991/gitsigns.nvim'](https://github.com/lewis6991/gitsigns.nvim)\
Statusline: ['nvim-lualine/lualine.nvim'](https://github.com/nvim-lualine/lualine.nvim)\
Comment shortcut: ['numToStr/Comment.nvim'](https://github.com/numToStr/Comment.nvim)\
File tree: ['nvim-tree/nvim-tree.lua'](https://github.com/nvim-tree/nvim-tree.lua)\
File formatting (mainly for prettier): ['stevearc/conform.nvim'](https://github.com/stevearc/conform.nvim)\
Custom ColorColumn behavior: ['m4xshen/smartcolumn.nvim'](https://github.com/m4xshen/smartcolumn.nvim)\
Custom splash screen: ['startup-nvim/startup.nvim'](https://github.com/startup-nvim/startup.nvim)\
    dependecies:\
        ['nvim-telescope/telescope.nvim'](https://github.com/nvim-telescope/telescope.nvim)\
        ['nvim-lua/plenary.nvim'](https://github.com/nvim-lua/plenary.nvim)\
Fuzzy finder: ['nvim-telescope/telescope.nvim'](https://github.com/nvim-telescope/telescope.nvim)\
    depends on ['nvim-lua/plenary.nvim'](https://github.com/nvim-lua/plenary.nvim)\
Syntax highlighting: ['nvim-treesitter/nvim-treesitter'](https://github.com/nvim-treesitter/nvim-treesitter)\
Language Server Protocol (LSP): \
    ['neovim/nvim-lspconfig'](https://github.com/neovim/nvim-lspconfig)\
    dependant on:\
        ['hrsh7th/cmp-nvim-lsp'](https://github.com/hrsh7th/cmp-nvim-lsp)\
        ['hrsh7th/cmp-buffer'](https://github.com/hrsh7th/cmp-buffer)\
        ['hrsh7th/cmp-path'](https://github.com/hrsh7th/cmp-path)\
        ['hrsh7th/cmp-cmdline'](https://github.com/hrsh7th/cmp-cmdline)\
        ['hrsh7th/nvim-cmp'](https://github.com/hrsh7th/nvim-cmp)\
        ['williamboman/mason.nvim'](https://github.com/williamboman/mason.nvim)(LSP package manager)\
        ['williamboman/mason-lspconfig.nvim'](https://github.com/williamboman/mason-lspconfig.nvim)\
        ['kosayoda/nvim-lightbulb'](https://github.com/kosayoda/nvim-lightbulb)(For code actions notifications)\
        ['hrsh7th/cmp-vsnip'](https://github.com/hrsh7th/cmp-vsnip)\
        ['hrsh7th/vim-vsnip'](https://github.com/hrsh7th/vim-vsnip)\
        ['hrsh7th/vim-vsnip-integ'](https://github.com/hrsh7th/vim-vsnip-integ)\

# Installation

To install simply clone this repo into your .config directory and rename the neovim-config directory
to nvim

```
    cd ~/.config
    git clone https://github.com/Algos-hub/neovim-config
    mv neovim-config nvim
```
