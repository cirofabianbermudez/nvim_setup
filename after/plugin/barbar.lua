vim.g.barbar_auto_setup = false

require("barbar").setup({
	animation = false,
	auto_hide = false,
	insert_at_end = true,
})

-- you need to comment :bd in remap.lua, recommended
vim.keymap.set("n", "<leader>c", ":BufferClose<CR>")
