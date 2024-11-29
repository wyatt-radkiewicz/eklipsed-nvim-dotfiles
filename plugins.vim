" Vim plug plugins
call plug#begin()

" Package manager for lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'	| " Lsp support dependencies
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-lint'			| " Linter dependencies

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

call plug#end()

