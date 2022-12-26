-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd("packadd packer.nvim")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
      vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- use("ellisonleao/gruvbox.nvim" )
  -- use({ "catppuccin/nvim", as = "catppuccin" })
  use("https://gitlab.com/__tpb/monokai-pro.nvim")
  -- use('folke/tokyonight.nvim')

  use({
	  requires = { {"nvim-lua/plenary.nvim"} },
      "nvim-telescope/telescope.nvim", tag = "0.1.0",
  })

  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

  use("mbbill/undotree")

  use({
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
  })

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- commenting
  use {
      "numToStr/Comment.nvim",
      config = function()
          require('Comment').setup()
      end
  }

  if packer_bootstrap then
      require('packer').sync()
  end
end)
