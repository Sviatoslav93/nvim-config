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
  -- Lightspeed.nvim for fast word/character jumping
  {
    "ggandor/lightspeed.nvim",
    config = function()
      -- Lightspeed setup
      require("lightspeed").setup({
        -- Optional configuration options, for example:
        limit_ft_matches = 4,  -- Limit the number of matches shown in the search
        ignore_case = true,    -- Ignore case when searching
        jump_to_unique_chars = true,  -- Jump directly to characters when there’s only one occurrence
      })

    end,
  },
})
