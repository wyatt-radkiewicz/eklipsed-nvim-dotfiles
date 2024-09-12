require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.3',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	--{
	--	"nvim-treesitter/nvim-treesitter",
	--	build = ":TSUpdate"
	--},
	{
  		'projekt0n/github-nvim-theme',
  		lazy = false, -- make sure we load this during startup if it is your main colorscheme
  		priority = 1000, -- make sure to load this before all the other start plugins
  		config = function()
    			require('github-theme').setup({
      				-- ...
    			})

    			vim.cmd('colorscheme github_dark')
  		end,
	},
	--'nvim-treesitter/playground',
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	--- Uncomment these if you want to manage LSP servers from neovim
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
})
