return {
	"stevearc/oil.nvim",
	config = function()
		local config = require("oil")
		config.setup({
			default_file_explorer = false,
		})
		vim.keymap.set("n", "<Leader>-", ":Oil<CR>", { desc = "Open parent directory" })
	end,
}

