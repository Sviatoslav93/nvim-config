vim.opt.ignorecase = true
vim.opt.smartcase = true

if vim.g.vscode then
    -- VSCode extension
    require('code.options')
    require('code.plugins')
    require('code.highlights')
    require('code.keymaps')
else
    -- ordinary Neovim
    vim.g.mapleader = ' '
    vim.opt.scrolloff = 10
    require('options')
    require('keymaps')
    require('plugins')
    require('colorscheme')
    require('highlights')
end
