-- Set up key mappings
local map = vim.keymap.set

-- Remap 'jk' to escape in insert mode
map('i', 'jk', '<Esc>', { desc = 'Escape from insert mode' })

-- Quick save
map('n', '<leader>w', '<Cmd>w<CR>', { desc = 'Save buffer' })

-- Quick quit
map('n', '<leader>q', '<Cmd>q<CR>', { desc = 'Quit buffer' })

-- Telescope mappings
map('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', { desc = 'Find files' })
map('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
map('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', { desc = 'Find buffers' })
map('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = 'Find help' })

-- Nvim-tree toggle
map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })