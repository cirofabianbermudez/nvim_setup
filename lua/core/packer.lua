return require('packer').startup(function(use)
    -- Packer ifself
    use 'wbthomason/packer.nvim'
    -- Colorschemes
    use 'catppuccin/nvim'
    use 'rose-pine/neovim'
    -- IDE
    --use 'nvim-lua/plenary.nvim'
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.6',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'stevearc/oil.nvim'
    -- Optional
    -- use 'nvim-tree/nvim-web-devicons'
    -- use 'Yggdroot/indentLine'
    use 'nvim-lualine/lualine.nvim'
end)

