local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- === Core Plugins ===
  'nvim-lua/plenary.nvim', -- A utility library for many plugins
  'nvim-tree/nvim-web-devicons', -- Adds file icons

  -- === UI & Appearance ===
  { 
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },

  'nvim-lualine/lualine.nvim', -- A fancy statusline
  'folke/which-key.nvim', -- Shows keybindings when you press the leader key
  -- 'nvim-tree/nvim-tree.lua', -- A file explorer

  -- === LSP & Autocompletion ===
--   {
--     'neovim/nvim-lspconfig', -- Core LSP setup
--     dependencies = {
--       'williamboman/mason.nvim', -- Installs language servers
--       'williamboman/mason-lspconfig.nvim', -- Bridges mason and lspconfig
--     },
--   },
--   {
--     'hrsh7th/nvim-cmp', -- Autocompletion engine
--     dependencies = {
--       'hrsh7th/cmp-nvim-lsp', -- LSP completion source
--       'hrsh7th/cmp-buffer',   -- Buffer completion source
--       'hrsh7th/cmp-path',     -- Path completion source
--       'L3MON4D3/LuaSnip',     -- Snippet engine
--       'saadparwaiz1/cmp_luasnip', -- Snippet completion source
--     },
--   },

  -- === Syntax Highlighting ===
--   {
--     'nvim-treesitter/nvim-treesitter',
--     build = ':TSUpdate',
--     event = 'VeryLazy',
--   },

  -- === Fuzzy Finder ===
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
  },
  
  -- === Git Integration ===
  --'tpope/vim-fugitive', -- A fantastic git wrapper
  --'lewis6991/gitsigns.nvim', -- Git signs in the sign column

  -- === Productivity & Text Editing ===
  'christoomey/vim-tmux-navigator', -- Seamless navigation between Neovim and Tmux splits
  'mbbill/undotree', -- A visual undo tree
  'tpope/vim-surround', -- Adds, changes, and deletes surrounding characters
  'windwp/nvim-autopairs', -- Auto-closes brackets, parens, etc.
  'numToStr/Comment.nvim', -- A simple comment plugin
})
