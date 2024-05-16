vim.opt.relativenumber = true

vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hidden = true

vim.opt.cursorline = true

vim.opt.title = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.spell = true

vim.opt.colorcolumn = "120"

vim.opt.wrap = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.linebreak = true

vim.o.wildmode = "longest,list:longest,full"
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"

vim.opt.completeopt = "noinsert,menuone,noselect"

vim.opt.autoindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ttyfast = true

vim.opt.scrolloff = 999

vim.cmd("highlight ColorColumn ctermbg=lightcyan guibg=lightcyan")
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.fillchars = { eob = ' ' }

vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:v:lnum} %s"
vim.o.termguicolors = true
