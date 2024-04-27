return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local config = require("tokyonight")
		config.setup({
			style = "moon",
			comments = { italic = true },
			keywords = { italic = false },
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}

