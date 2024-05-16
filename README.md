# Neovim config files

This is my config files for my personal Neovim installation.

The following plugins are being used:

Theme: ['maxmx03/solarized.nvim'](https://github.com/maxmx03/solarized.nvim)\
Auto-pairing (parenthesis, brackets, quotes, etc...): ['windwp/nvim-autopairs'](https://github.com/windwp/nvim-autopairs)\
Icons: ['nvim-tree/nvim-web-devicons'](https://github.com/nvim-tree/nvim-web-devicons)\
Git wrapper: ['tpope/vim-fugitive'](https://github.com/tpope/vim-fugitive)\
Git buffer integration: ['lewis6991/gitsigns.nvim'](https://github.com/lewis6991/gitsigns.nvim)\
Statusline: ['nvim-lualine/lualine.nvim'](https://github.com/nvim-lualine/lualine.nvim)\
Comment shortcut: ['numToStr/Comment.nvim'](https://github.com/numToStr/Comment.nvim)\
File tree: ['nvim-tree/nvim-tree.lua'](https://github.com/nvim-tree/nvim-tree.lua)\
Custom ColorColumn behavior: ['m4xshen/smartcolumn.nvim'](https://github.com/m4xshen/smartcolumn.nvim)\
Custom splash screen: ['startup-nvim/startup.nvim'](https://github.com/startup-nvim/startup.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;dependencies:\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['nvim-telescope/telescope.nvim'](https://github.com/nvim-telescope/telescope.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['nvim-lua/plenary.nvim'](https://github.com/nvim-lua/plenary.nvim)\
Fuzzy finder: ['nvim-telescope/telescope.nvim'](https://github.com/nvim-telescope/telescope.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;depends on ['nvim-lua/plenary.nvim'](https://github.com/nvim-lua/plenary.nvim)\
Syntax highlighting: ['nvim-treesitter/nvim-treesitter'](https://github.com/nvim-treesitter/nvim-treesitter)\
Language Server Protocol (LSP): ['neovim/nvim-lspconfig'](https://github.com/neovim/nvim-lspconfig)\
&nbsp;&nbsp;&nbsp;&nbsp;dependencies on:\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/cmp-nvim-lsp'](https://github.com/hrsh7th/cmp-nvim-lsp)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/cmp-buffer'](https://github.com/hrsh7th/cmp-buffer)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/cmp-path'](https://github.com/hrsh7th/cmp-path)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/cmp-cmdline'](https://github.com/hrsh7th/cmp-cmdline)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/nvim-cmp'](https://github.com/hrsh7th/nvim-cmp)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['williamboman/mason.nvim'](https://github.com/williamboman/mason.nvim)(LSP package manager)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['williamboman/mason-lspconfig.nvim'](https://github.com/williamboman/mason-lspconfig.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['kosayoda/nvim-lightbulb'](https://github.com/kosayoda/nvim-lightbulb)(For code actions notifications)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/cmp-vsnip'](https://github.com/hrsh7th/cmp-vsnip)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/vim-vsnip'](https://github.com/hrsh7th/vim-vsnip)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;['hrsh7th/vim-vsnip-integ'](https://github.com/hrsh7th/vim-vsnip-integ)\

# Installation

To install simply clone this repo into your .config directory and rename the neovim-config directory
to nvim

```
    cd ~/.config
    git clone https://github.com/Algos-hub/neovim-config
    mv neovim-config nvim
```
