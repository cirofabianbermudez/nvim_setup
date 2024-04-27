return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "texlab", "clangd", "verible", "ruff_lsp" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.verible.setup({})
			lspconfig.clangd.setup({})
			lspconfig.texlab.setup({})
			lspconfig.ruff_lsp.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, {})

			local lsp_on = false
			function Toggle_lsp()
				if not lsp_on then
					print("Start Lsp.")
					vim.cmd("LspStart")
				else
					print("Stop Lsp")
					vim.cmd("LspStop")
				end
				lsp_on = not lsp_on
			end

			vim.api.nvim_set_keymap("n", "<leader>el", "<cmd>lua Toggle_lsp()<CR>", {})
		end,
	},
}

