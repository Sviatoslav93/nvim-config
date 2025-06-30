-- Set up your leader key before loading any plugins.
vim.g.mapleader = ' '

-- Load your options.
require('options')

-- Load your keymaps.
require('keymaps')

-- Load your plugin manager and plugins.
require('plugins')

-- Load other configurations (LSP, Treesitter, etc.)
-- require('lsp')
-- require('treesitter')
require('colorscheme')

-- Add this line to load the highlight on yank module
require('highlights')