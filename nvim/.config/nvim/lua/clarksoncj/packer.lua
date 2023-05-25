local ensure_packer = function()
	local fn = vim.fn
	local install_path = os.getenv('HOME') .. '/.local/share/nvim/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()


return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("sbdchd/neoformat")

	-- Simple plugins can be specified as strings
	use("TimUntersberger/neogit")

	-- TJ created lodash of neovim
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
	use("kyazdani42/nvim-web-devicons")

	use({
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	})

	use('lukas-reineke/indent-blankline.nvim') -- Add indentation guides even on blank lines
	use('numToStr/Comment.nvim') -- "gc" to comment visual regions/lines
	use('tpope/vim-sleuth') -- Detect tabstop and shiftwidth automatically
	use('tpope/vim-fugitive')
	use('tpope/vim-rhubarb')
	use('lewis6991/gitsigns.nvim')
	use('jose-elias-alvarez/null-ls.nvim')

	-- All the things
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
			{ "simrat39/symbols-outline.nvim" },
		}
	}

	use "github/copilot.vim"
	use "akinsho/toggleterm.nvim"

	-- Primeagen doesn"t create lodash
	use("ThePrimeagen/git-worktree.nvim")
	use("ThePrimeagen/harpoon")

	use("mbbill/undotree")
	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	-- Colorscheme section
	use("gruvbox-community/gruvbox")
	use("folke/tokyonight.nvim")
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
		end
	})

	use("nvim-treesitter/nvim-treesitter", {
		run = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
	})

	use({
		'nvim-treesitter/nvim-treesitter-textobjects',
		after = 'nvim-treesitter',
	})

	use("nvim-treesitter/playground")
	use("romgrk/nvim-treesitter-context")

	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("theHamsta/nvim-dap-virtual-text")

	use('folke/zen-mode.nvim')

	-- Golang Plugins
	use("ray-x/go.nvim")
	use("ray-x/guihua.lua")

	-- devcontainers
	use('https://codeberg.org/esensar/nvim-dev-container')

	-- TITS aka Time in the Saddle
	use("ThePrimeagen/vim-be-good")


	if packer_bootstrap then
		require('packer').sync()
	end
end)
