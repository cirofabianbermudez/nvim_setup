-- Servers list
local servers = { "lua_ls" }
-- , "pyright"

-- Init mason
require("mason").setup()

-- Init mason-lspconfig
require("mason-lspconfig").setup({
	ensure_installed = servers,
})

-- Setup language servers
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts)
