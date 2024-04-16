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

local plugins = {
  -- Colorschemes
  'catppuccin/nvim',
  'rose-pine/neovim',
  'folke/tokyonight.nvim',
  -- IDE
  'nvim-treesitter/nvim-treesitter',
  { 'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  'stevearc/oil.nvim',
  -- Optional
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',
  'lewis6991/gitsigns.nvim',
  'romgrk/barbar.nvim',
  -- 'Yggdroot/indentLine',
}

local opts = {}
require("lazy").setup(plugins, opts)

