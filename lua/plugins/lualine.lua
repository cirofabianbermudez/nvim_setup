return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local config = require("lualine")
		config.setup({
			options = {
				icons_enabled = false,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = { "neo-tree" },
			},
      sections = {
        lualine_x = {{
          function()
            local file = vim.fn.expand('%:p')
            if file == '' then return '' end
            local stat = vim.loop.fs_stat(file)
            if not stat then return '' end
            return "Last edit: " .. os.date('%Y/%m/%d %H:%M:%S', stat.mtime.sec)
          end
        },'encoding', 'fileformat', 'filetype'},
      },
		})
	end,
}

