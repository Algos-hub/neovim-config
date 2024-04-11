--"Buffer switching
vim.keymap.set({'n', 'v', 'o'}, 'gn', ':bnext<cr>')
vim.keymap.set({'n', 'v', 'o'}, 'gp', ':bprevious<cr>')
vim.keymap.set({'n', 'v', 'o'}, 'gd', ':bdelete<cr>')
vim.keymap.set({'n', 'v', 'o'}, '<C-n>', ':NvimTreeToggle<cr>')

