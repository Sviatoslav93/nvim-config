local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Lua helper library used by many plugins.
  { "nvim-lua/plenary.nvim", lazy = true },
  -- Filetype icons for UI plugins.
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Statusline at the bottom of each window.
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "auto",
        globalstatus = true,
      },
    },
  },
  -- Popup hints for available keybindings.
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
  -- Fuzzy finder for files, text, buffers, and help.
  {
    "nvim-telescope/telescope.nvim",
    version = false,
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  -- Seamless navigation between tmux panes and Neovim splits.
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- Visual undo history tree toggle.
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
  -- Add/change/delete surrounding characters quickly.
  {
    "tpope/vim-surround",
    event = "VeryLazy",
  },
  -- Auto-close brackets, quotes, and pairs while typing.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  -- Toggle line/block comments with easy keymaps.
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {},
  },
}, {
  checker = { enabled = false },
})
