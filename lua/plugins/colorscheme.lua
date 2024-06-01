return {
  "gbprod/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local config = require("nord")
    config.setup({
      transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
    })
    vim.cmd.colorscheme("nord")
  end,

--	"folke/tokyonight.nvim",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		local config = require("tokyonight")
--		config.setup({
--			style = "moon",
--			comments = { italic = true },
--			keywords = { italic = false },
--		})
--		vim.cmd.colorscheme("tokyonight")
--	end,
}

