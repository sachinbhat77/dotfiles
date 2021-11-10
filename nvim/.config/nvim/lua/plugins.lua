return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'phaazon/hop.nvim',
		as = 'hop',
		config = function()
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	}

	use {
		'jghauser/mkdir.nvim',
		config = function()
			require('mkdir')
		end
	}

	use { 'hkupty/iron.nvim'}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use 'windwp/nvim-autopairs'

	use {
		'abecodes/tabout.nvim',
		config = function()
			require('tabout').setup {
				tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
				backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
				act_as_tab = true, -- shift content if tab out is not possible
				act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
				enable_backwards = true, -- well ...
				completion = true, -- if the tabkey is used in a completion pum
				tabouts = {
					{open = "'", close = "'"},
					{open = '"', close = '"'},
					{open = '`', close = '`'},
					{open = '(', close = ')'},
					{open = '[', close = ']'},
					{open = '{', close = '}'}
				},
				ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
				exclude = {} -- tabout will ignore these filetypes
			}
		end,
		wants = {'nvim-treesitter'}, -- or require if not used so far
	}

	use {'ms-jpq/coq_nvim', branch = 'coq'}
	use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

	use {'ms-jpq/coq.thirdparty', branch = '3p'}


	use 'ray-x/go.nvim'

	use "blackCauldron7/surround.nvim"

	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}

	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	use "projekt0n/github-nvim-theme"

	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	use "lukas-reineke/indent-blankline.nvim"

	use {"akinsho/toggleterm.nvim"}

end)
