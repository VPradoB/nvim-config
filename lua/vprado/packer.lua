vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
  }

  use{'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
  use{"mbbill/undotree"}
  use {"tpope/vim-fugitive"}
	
  --zero lsp
  use{'neovim/nvim-lspconfig'}
  use{'williamboman/mason.nvim'}
  use{'williamboman/mason-lspconfig.nvim'}
  use{'hrsh7th/nvim-cmp'}
  use{'hrsh7th/cmp-nvim-lsp'}
  use{'hrsh7th/cmp-buffer'}
  use{'hrsh7th/cmp-path'}
  use{'saadparwaiz1/cmp_luasnip'}
  use{'L3MON4D3/LuaSnip'}
  use{'rafamadriz/friendly-snippets'}

end)
