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
	"catppuccin/nvim",
	"rose-pine/neovim",
	"folke/tokyonight.nvim",

	-- IDE
	"nvim-treesitter/nvim-treesitter",
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
	{ "nvim-telescope/telescope.nvim", tag = "0.1.6" },

	-- Layout
	"stevearc/oil.nvim",
	"nvim-lualine/lualine.nvim",
	{ "romgrk/barbar.nvim", dependencies = {
		"lewis6991/gitsigns.nvim",
	} },

	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"nvim-telescope/telescope-ui-select.nvim",

	-- Linter and Formater
	-- "nvimtools/none-ls.nvim",

	-- Completion and Snipts
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",
  {"L3MON4D3/LuaSnip", dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
  } },

	-- Optional
	{ "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = {
		"MunifTanjim/nui.nvim",
	} },
	-- 'Yggdroot/indentLine',
}

local opts = {}
require("lazy").setup(plugins, opts)

