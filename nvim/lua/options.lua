-- searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.cindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.backspace = "2"

-- display
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.wildmode = "longest,list"
vim.opt.colorcolumn = "80"
vim.opt.number = true

-- tags
vim.opt.tags = "./.tags;,.tags;$HOME"

-- filetype / completion
vim.cmd("filetype plugin on")
vim.opt.omnifunc = "syntaxcomplete#Complete"
vim.opt.completeopt = "menu"
