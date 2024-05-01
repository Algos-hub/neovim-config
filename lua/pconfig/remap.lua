--"Buffer switching
vim.keymap.set({ 'n', 'v', 'o' }, '<space>n', ':bnext<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<space>p', ':bprevious<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<space>x', ':bdelete<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<space>i', ':bfirst<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<space>l', ':blast<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<C-n>', ':NvimTreeToggle<cr>')
