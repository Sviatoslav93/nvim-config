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
    {
      'vscode-neovim/vscode-multi-cursor.nvim',
      event = 'VeryLazy',
      cond = not not vim.g.vscode,
      opts = {},
    },

  -- leap.nvim
  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').add_default_mappings()

      -- Grey out the non-target area during a leap jump
      vim.api.nvim_set_hl(0, 'LeapBackdrop', { fg = '#5c6370' }) -- a grey color
    end,
  },

  -- whichkey
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup({})
    end,
  },

  -- surround
  {
    "tpope/vim-surround"
  },

})
