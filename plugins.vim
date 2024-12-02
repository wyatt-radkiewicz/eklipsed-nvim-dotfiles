" Vim plug plugins
call plug#begin()

" Package manager for lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'	| " Lsp support dependencies
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-lint'			| " Linter dependencies

" Better syntax highlighting (seperate from lsp)
Plug 'nvim-treesitter/nvim-treesitter'

" Snippets and completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/nvim-cmp'

" Formatter for files
Plug 'sbdchd/neoformat'

" Theme
Plug 'projekt0n/github-nvim-theme'

" Web dev icons (used by many soy devs of which I am NOT one)
Plug 'nvim-tree/nvim-web-devicons'		| " OPTIONAL: for file icons

" Tab bar
Plug 'lewis6991/gitsigns.nvim'			| " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

" Better file tree
Plug 'nvim-tree/nvim-tree.lua'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

call plug#end()

