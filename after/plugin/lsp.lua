-- Servers list
local servers = { "lua_ls", "verible", "texlab", "clangd"}
-- , "pyright"

-- Init mason
require("mason").setup()

-- Init mason-lspconfig
require("mason-lspconfig").setup({
	ensure_installed = servers,
})

-- Setup language servers
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})

lspconfig.verible.setup({
	capabilities = capabilities,
})

lspconfig.texlab.setup({
	capabilities = capabilities,
})

lspconfig.clangd.setup({
	capabilities = capabilities,
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts)

