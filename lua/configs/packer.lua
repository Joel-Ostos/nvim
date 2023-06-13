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
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
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

  use { 'fgheng/winbar.nvim' }
  -- Highlightning
  use 'nvim-treesitter/nvim-treesitter'

  use  'vimwiki/vimwiki'
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)

