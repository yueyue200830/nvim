-- packer is not used now, use lazy instead

-- Auto sync plugins
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	
  -- theme
  use "navarasu/onedark.nvim"
  use 'shaunsingh/nord.nvim'
	
  -- nvim-tree
  use {
		'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
	
	-- highlight
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- using packer.nvim
  -- use {
	-- 'akinsho/bufferline.nvim', 
	-- tag = "v3.*", 
	-- requires = 'nvim-tree/nvim-web-devicons',
  -- }
  use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
	
	-- lsp
  use {
		'neovim/nvim-lspconfig',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
  }

  -- search
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Learning
  -- use 'ThePrimeagen/vim-be-good'
end)

