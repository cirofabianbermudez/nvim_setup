local flavors = {
  'catppuccin',
  'rose-pine',
}

local theme = flavors[2]

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

vim.cmd('colorscheme ' .. theme)

