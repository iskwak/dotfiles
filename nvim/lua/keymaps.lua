-- window navigation with Alt+arrow keys
vim.keymap.set("n", "<A-Up>",    "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<A-Down>",  "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<A-Left>",  "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<A-Right>", "<cmd>wincmd l<CR>", { silent = true })

-- vim-easy-align (commented out -- conflicts with claudecode.nvim <leader>a prefix)
-- vim.keymap.set("v", "<Enter>",   "<Plug>(EasyAlign)")
-- vim.keymap.set("n", "<Leader>a", "<Plug>(EasyAlign)")

-- terminal window navigation (Ctrl+W works from terminal mode without manual escape)
vim.keymap.set("t", "<C-w>w", "<C-\\><C-N><C-w>w", { silent = true })
vim.keymap.set("t", "<C-w>h", "<C-\\><C-N><C-w>h", { silent = true })
vim.keymap.set("t", "<C-w>l", "<C-\\><C-N><C-w>l", { silent = true })
vim.keymap.set("t", "<C-w>j", "<C-\\><C-N><C-w>j", { silent = true })
vim.keymap.set("t", "<C-w>k", "<C-\\><C-N><C-w>k", { silent = true })
