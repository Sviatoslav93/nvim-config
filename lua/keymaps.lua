-- Set up key mappings
local map = vim.keymap.set

-- Remap 'jk' to escape in insert mode
map('i', 'jk', '<Esc>', { desc = 'Escape from insert mode' })

-- Quick save
map('n', '<leader>w', '<Cmd>w<CR>', { desc = 'Save buffer' })

-- Quick quit
map('n', '<leader>q', '<Cmd>q<CR>', { desc = 'Quit buffer' })

-- split window
map('n', '<leader>sv', '<Cmd>vsplit<CR>', { desc = 'Vertical split' })
map('n', '<leader>sh', '<Cmd>split<CR>', { desc = 'Horizontal split' })
-- move between splits
map('n', '<C-h>', '<C-w>h', { desc = 'Move to left split' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move to below split' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move to above split' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move to right split' })

-- Telescope mappings
map('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', { desc = 'Find files' })
map('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
map('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', { desc = 'Find buffers' })
map('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = 'Find help' })
map('n', '<leader>fr', '<Cmd>Telescope oldfiles<CR>', { desc = 'Recent files' })

-- Built-in file explorer (netrw) keeps base setup lightweight
map('n', '<leader>e', '<Cmd>Ex<CR>', { desc = 'Open file explorer' })

-- Undo history viewer
map('n', '<leader>u', '<Cmd>UndotreeToggle<CR>', { desc = 'Toggle undo tree' })
map('n', '<leader>t', '<Cmd>split | terminal<CR>', { desc = 'Open terminal (split)' })

-- Navigate buffers
map("n", "<A-l>", "<cmd>BufferNext<CR>", opts)
map("n", "<A-h>", "<cmd>BufferPrevious<CR>", opts)

-- Close buffer
map("n", "<leader>q", "<cmd>BufferClose<CR>", opts)

-- Move buffer position
map("n", "<S-A-l>", "<cmd>BufferMoveNext<CR>", opts)
map("n", "<S-A-h>", "<cmd>BufferMovePrevious<CR>", opts)

-- Go to buffer by number
map("n", "<leader>1", "<cmd>BufferGoto 1<CR>", opts)
map("n", "<leader>2", "<cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>3", "<cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>4", "<cmd>BufferGoto 4<CR>", opts)

-- Pin buffer (very useful)
map("n", "<leader>p", "<cmd>BufferPin<CR>", opts)

-- Close all but current
map("n", "<leader>bo", "<cmd>BufferCloseAllButCurrent<CR>", opts)

-- Magic: jump mode 🔥
map("n", "<leader>b", "<cmd>BufferPick<CR>", opts)
