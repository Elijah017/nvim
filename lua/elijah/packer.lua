-- This file can be loaded by calling 'lua require('Plugins')' from your init.vim

-- Only required if you have packer configured as 'opt'
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colour Themes
  use { 
    "catppuccin/nvim", 
    as = "catppuccin" 
  }
  use { "colevoss/nvimpire" }
  use { "folke/tokyonight.nvim" }
  -- End Colour Themes

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  use "terrortylor/nvim-comment"

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  -- LSP start
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
--LSP end

use 'nvim-tree/nvim-web-devicons'

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use 'm4xshen/autoclose.nvim'

use 'windwp/nvim-ts-autotag'

use {'neoclide/coc.nvim', branch = 'release'}
end)
