# Neovim config files

This is my config files for my personal Neovim installation.

### Plugins used:

&nbsp;&nbsp;&nbsp;&nbsp;* Theme: ['maxmx03/solarized.nvim'](https://github.com/maxmx03/solarized.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;* Auto-pairing (parenthesis, brackets, quotes, etc...): ['windwp/nvim-autopairs'](https://github.com/windwp/nvim-autopairs)\
&nbsp;&nbsp;&nbsp;&nbsp;* Icons: ['nvim-tree/nvim-web-devicons'](https://github.com/nvim-tree/nvim-web-devicons)\
&nbsp;&nbsp;&nbsp;&nbsp;* Git wrapper: ['tpope/vim-fugitive'](https://github.com/tpope/vim-fugitive)\
&nbsp;&nbsp;&nbsp;&nbsp;* Git buffer integration: ['lewis6991/gitsigns.nvim'](https://github.com/lewis6991/gitsigns.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;* Statusline: ['nvim-lualine/lualine.nvim'](https://github.com/nvim-lualine/lualine.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;* Comment shortcut: ['numToStr/Comment.nvim'](https://github.com/numToStr/Comment.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;* File tree: ['nvim-tree/nvim-tree.lua'](https://github.com/nvim-tree/nvim-tree.lua)\
&nbsp;&nbsp;&nbsp;&nbsp;* Custom ColorColumn behavior: ['m4xshen/smartcolumn.nvim'](https://github.com/m4xshen/smartcolumn.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;* Custom splash screen: ['startup-nvim/startup.nvim'](https://github.com/startup-nvim/startup.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;* Fuzzy finder: ['nvim-telescope/telescope.nvim'](https://github.com/nvim-telescope/telescope.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   dependency: ['nvim-lua/plenary.nvim'](https://github.com/nvim-lua/plenary.nvim)  \
&nbsp;&nbsp;&nbsp;&nbsp;* Syntax highlighting: ['nvim-treesitter/nvim-treesitter'](https://github.com/nvim-treesitter/nvim-treesitter)\
&nbsp;&nbsp;&nbsp;&nbsp;* Language Server Protocol (LSP): ['neovim/nvim-lspconfig'](https://github.com/neovim/nvim-lspconfig)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   dependencies:\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/cmp-nvim-lsp'](https://github.com/hrsh7th/cmp-nvim-lsp)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/cmp-buffer'](https://github.com/hrsh7th/cmp-buffer)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/cmp-path'](https://github.com/hrsh7th/cmp-path)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/cmp-cmdline'](https://github.com/hrsh7th/cmp-cmdline)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/nvim-cmp'](https://github.com/hrsh7th/nvim-cmp)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['williamboman/mason.nvim'](https://github.com/williamboman/mason.nvim)(LSP package manager)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['williamboman/mason-lspconfig.nvim'](https://github.com/williamboman/mason-lspconfig.nvim)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['kosayoda/nvim-lightbulb'](https://github.com/kosayoda/nvim-lightbulb)(For code actions notifications)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/cmp-vsnip'](https://github.com/hrsh7th/cmp-vsnip)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/vim-vsnip'](https://github.com/hrsh7th/vim-vsnip)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ['hrsh7th/vim-vsnip-integ'](https://github.com/hrsh7th/vim-vsnip-integ)\

# Installation

### 1: Install nerd fonts
&nbsp;&nbsp;&nbsp;&nbsp;This neovim configuration requires a nerd font to properly display icons and sections in the terminal.\
&nbsp;&nbsp;&nbsp;&nbsp;If you already have a nerd font installed in your terminal you can skip this step.\
&nbsp;&nbsp;&nbsp;&nbsp;You can find them alongside the installation guides in their official Github repo [here](https://github.com/ryanoasis/nerd-fonts)

### 2: Install make (optional)

&nbsp;&nbsp;&nbsp;&nbsp;This neovim configuration uses the telescope-fzf-native.nvim extension for telescope which requires `make`.\
&nbsp;&nbsp;&nbsp;&nbsp;`make` is used to build the binaries for telescope-fzf-native.nvim, which is used to speed up telescope but is not required.\
&nbsp;&nbsp;&nbsp;&nbsp;If you do not wish to use telescope-fzf-native.nvim you can delete `telescope-fzf.lua` and remove the lines 4-13 and 17-24 from `telescope.lua`

#### `telescope.lua`
```
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',

    -- Comment this section if you don't want to use telescope-fzf-native.nvim

    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            config = function()
                require("telescope").load_extension("fzf")
            end,
        }
    },

    -- End of comment

    config = function()
        require('telescope').setup({

        -- Comment this section if you don't want to use telescope-fzf-native.nvim

            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                }
            }

        -- End of comment

        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
```

### 3: Cloning this repo

&nbsp;&nbsp;&nbsp;&nbsp;To install simply clone this repo into your `.config` directory and rename the `neovim-config` directory to `nvim`.\
&nbsp;&nbsp;&nbsp;&nbsp;If you already have an `nvim` directory you might need to delete/move it somewhere else first.

```
    git clone https://github.com/Algos-hub/neovim-config ~/.config/nvim
```
