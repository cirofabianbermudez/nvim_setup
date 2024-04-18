require("neo-tree").setup({
	window = {
		position = "right",
		width = 40,
	},
})

local opt = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>nt", ":Neotree filesystem reveal left toggle<CR>", opt)
