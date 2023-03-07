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
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
	}
	use({
	  "glepnir/lspsaga.nvim",
	  branch = "main",
	  config = function()
	    require("lspsaga").setup({})
	  end,
	  requires = {
	    {"nvim-tree/nvim-web-devicons"},
	    --Please make sure you install markdown and markdown_inline parser
	    {"nvim-treesitter/nvim-treesitter"}
	  }
	})

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

-- Saltos 
  use {
	  'phaazon/hop.nvim',
	  branch = 'v2', -- optional but strongly recommended
	  config = function()
		  -- you can configure Hop the way you like here; see :h hop-config
		  require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	  end
  }

-- Chat gpt 

  use({
	  'dense-analysis/neural',
	  config = function()
		  require('neural').setup({
			  open_ai = {
				  api_key = '<YOUR OPENAI API SECRET KEY>'
			  }
		  })
	  end,
	  requires = {
		  'MunifTanjim/nui.nvim',
		  'ElPiloto/significant.nvim'
	  }
  })

  use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
  use('nvim-treesitter/playground')
  
-- versiones anteriores del codigo
  use("mbbill/undotree")

-- LaTeX
  use 'lervag/vimtex'
-- para mover lineas 	  
  use 'echasnovski/mini.move'
  -- terminal flotante  
  use('voldikss/vim-floaterm')
  -- use('honza/vim-snippets')
-- comentarios  
  use('tpope/vim-commentary')
-- linter  
  use ('dense-analysis/ale')
-- color 
use ('savq/melange') 
use 'nvim-tree/nvim-web-devicons'
use 'xiyaowong/nvim-transparent'
use {
  'phaazon/mind.nvim',
  branch = 'v2.2',
  requires = { 'nvim-lua/plenary.nvim' },
  config = function()
    require'mind'.setup()
  end
}
-- use 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
use 'Julian/lean.nvim'
end)









