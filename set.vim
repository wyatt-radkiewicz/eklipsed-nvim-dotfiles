" Misc options
set nosmartindent
set wrap
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set nohlsearch
set incsearch
set relativenumber
set colorcolumn=80
set updatetime=50
set scrolloff=8
set guicursor=" "
set mouse=a

" Enable filetype guessing and plugin loading
filetype on
filetype plugin on

" Enable syntax highlighting
syntax on

" Function to set tab size
function! TabStyle(size, expand, global)
	let l:dolocal = a:global ? '' : 'local'
	exe 'set'..l:dolocal..' '..(a:expand ? '' : 'no')..'expandtab'
	exe 'set'..l:dolocal..' shiftwidth='..a:size
	exe 'set'..l:dolocal..' tabstop='..a:size
endfunction

" Set default tab size
call TabStyle(8,v:false,v:true)

" Colorscheme
colorscheme github_dark_default

