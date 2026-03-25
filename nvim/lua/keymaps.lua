-- window navigation with Alt+arrow keys
vim.keymap.set("n", "<A-Up>",    "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<A-Down>",  "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<A-Left>",  "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<A-Right>", "<cmd>wincmd l<CR>", { silent = true })

-- vim-easy-align
vim.keymap.set("v", "<Enter>",   "<Plug>(EasyAlign)")
vim.keymap.set("n", "<Leader>a", "<Plug>(EasyAlign)")
