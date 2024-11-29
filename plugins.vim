" Vim plug plugins
call plug#begin()

" Package manager for lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'	| " Lsp support dependencies
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-lint'			| " Linter dependencies
Plug 'mhartington/formatter.nvim'		| " Formatter dependencies

" Theme
Plug 'projekt0n/github-nvim-theme'

" Tab bar
Plug 'nvim-tree/nvim-web-devicons'		| " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim'			| " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

call plug#end()

