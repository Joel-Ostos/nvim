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

-- Configuraciones para LSP 
use 'neovim/nvim-lspconfig'

-- Autocompletado
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use "rafamadriz/friendly-snippets"

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- Empareja los simbolos
use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
}

-- para mover lineas 	  
use 'echasnovski/mini.move'

-- comentarios  
use('tpope/vim-commentary')

-- color 
use {'nyoom-engineering/oxocarbon.nvim'}
use { "arturgoms/moonbow.nvim" }

-- iconos
use 'nvim-tree/nvim-web-devicons'

-- Vuelve nvim transparente
use 'xiyaowong/nvim-transparent'

-- Highlightning
use 'nvim-treesitter/nvim-treesitter'

-- Previsualizacion archivos markdown 
use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

-- Debugger
use 'mfussenegger/nvim-dap'

end)

