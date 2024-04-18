--[[
local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
	},
})
--]]
-- vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- vim.keymap.set("n", "<leader>gf", ":! clang-format % --style=Google > .temp <CR><CR> | <Esc>ggdG<ESC>:0r .temp<CR>", {})

function my_formater()
	print("This is the filetype: ")
	print(vim.bo.filetype)

	if vim.bo.filetype == "lua" then
		--vim.keymap.set("n", "<leader>gf", ":w! .temp | :! stylua .temp <CR><CR> | :%delete | :0r .temp<CR>", {})
		vim.cmd(":w! .temp")
		vim.cmd(":! stylua .temp")
		vim.cmd(":%delete ")
		vim.cmd(":0r .temp")
    vim.api.nvim_feedkeys('j', 'n', true )
	end

	if vim.bo.filetype == "cpp" then
		vim.keymap.set("n", "<leader>gf", ":! clang-format % --style=Google > .temp <CR><CR> | <Esc>ggdG<ESC>:0r .temp<CR>", {})
		vim.cmd(":! clang-format % --style=Google > .temp")
		vim.cmd(":%delete ")
		vim.cmd(":0r .temp")
    vim.api.nvim_feedkeys('j', 'n', true )
	end
end


vim.api.nvim_set_keymap("n", "<leader>gf", "<cmd>lua my_formater()<CR>", {})

