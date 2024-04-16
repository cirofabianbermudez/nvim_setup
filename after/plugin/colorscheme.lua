local flavors = {
  'catppuccin',
  'rose-pine',
  'tokyonight',
}

local theme = flavors[3]

-- rose-pine configuration
if (theme == 'rose-pine') then
  require('rose-pine').setup({
    variant = 'moon',  -- auto, main, moon, dawn
    styles = {
      bold = false,
      italic = false,
    },
  })
end

-- catppucin configuration
if (theme == 'catppuccin') then
  require('catppuccin').setup({
    flavour = 'macchiato',  -- latte, frappe, macchiato, mocha
    no_italic = true,
    no_bold = true,
    no_underline = true,
  })
end

-- catppucin configuration
if (theme == 'tokyonight') then
  require('tokyonight').setup({
    style = "moon",
    styles = {
      comments = { italic = false },
      keywords = { italic = false },
    },

  })
end

vim.cmd('colorscheme ' .. theme)

