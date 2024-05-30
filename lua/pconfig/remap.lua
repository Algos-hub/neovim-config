--"Buffer switching
vim.keymap.set({ "n", "v", "o" }, "<Tab>", ":bnext<cr>")
vim.keymap.set({ "n", "v", "o" }, "<S-Tab>", ":bprevious<cr>")
vim.keymap.set({ "n", "v", "o" }, "<C-x>", ":bdelete<cr>")
vim.keymap.set({ "n", "v", "o" }, "<leader>1", ":bfirst<cr>")
vim.keymap.set({ "n", "v", "o" }, "<leader>0", ":blast<cr>")
vim.keymap.set({ "n", "v", "o" }, "<leader>l", ":b#<cr>")
vim.keymap.set({ "n", "v", "o" }, "<C-g>", ":LualineBuffersJump! ")
--
-- Pane switching
vim.keymap.set("n", "C-k", ":wincmd k<CR>")
vim.keymap.set("n", "C-j", ":wincmd j<CR>")
vim.keymap.set("n", "C-h", ":wincmd h<CR>")
vim.keymap.set("n", "C-l", ":wincmd l<CR>")

-- Clear highlights
vim.keymap.set({ "n", "v", "o" }, "<C-q>", ":nohlsearch<cr>")
