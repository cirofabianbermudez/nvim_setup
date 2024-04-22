function Formaters()
	print("This is the filetype: ")
	print(vim.bo.filetype)

	if vim.bo.filetype == "lua" then
		--vim.keymap.set("n", "<leader>gf", ":w! .temp | :! stylua .temp <CR><CR> | :%delete | :0r .temp<CR>", {})
		vim.cmd(":w! .temp")
		vim.cmd(":! stylua .temp")
		vim.cmd(":%delete ")
		vim.cmd(":0r .temp")
		vim.api.nvim_feedkeys("j", "n", true)
	end

	if vim.bo.filetype == "cpp" then
		-- vim.keymap.set("n", "<leader>gf", ":! clang-format % --style=Google > .temp <CR><CR> | <Esc>ggdG<ESC>:0r .temp<CR>", {})
		vim.cmd(":! clang-format % --style=Google > .temp")
		vim.cmd(":%delete ")
		vim.cmd(":0r .temp")
		vim.api.nvim_feedkeys("j", "n", true)
	end

	if vim.bo.filetype == "systemverilog" then
		vim.cmd(":w! .temp")
		vim.cmd(":! verible-verilog-format --inplace .temp ")
		vim.cmd(":%delete ")
		vim.cmd(":0r .temp")
		vim.api.nvim_feedkeys("j", "n", true)
	end
end

vim.api.nvim_set_keymap("n", "<leader>gf", "<cmd>lua Formaters()<CR>", {})

