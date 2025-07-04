-- Core editor settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.mouse = 'a'
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 300
vim.opt.signcolumn = 'yes'
vim.opt.cmdheight = 1

vim.opt.clipboard = 'unnamedplus' -- Use the system clipboard