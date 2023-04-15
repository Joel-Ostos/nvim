-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Para buscar archivos y esas cosas xd
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Todo lo que tiene que ver con LSP
use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use "rafamadriz/friendly-snippets"
use({
  "iamcco/markdown-preview.nvim",
  run = function() vim.fn["mkdp#util#install"]() end,
})

-- la linea del margen inferior
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- Empareja los simbolos
use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
}

-- versiones anteriores del codigo
use("mbbill/undotree")

-- LaTeX
use 'lervag/vimtex'

-- para mover lineas 	  
use 'echasnovski/mini.move'

-- comentarios  
use('tpope/vim-commentary')

-- linter  
use ('dense-analysis/ale')

-- color 
use ('savq/melange')

-- iconos
use 'nvim-tree/nvim-web-devicons'
use 'xiyaowong/nvim-transparent'

-- Organización
end)

