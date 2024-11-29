" Misc options
set nosmartindent
set wrap
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set nohlsearch
set incsearch
set nu
set relativenumber
set colorcolumn=80
set updatetime=50
set scrolloff=8
set guicursor=" "
set mouse=a

" Make it so that vim will run .vimrc in current open directory
set exrc
set secure	| " Make sure we don't run malicous .vimrc's

" Enable filetype guessing and plugin loading
filetype on
filetype plugin on

" Enable syntax highlighting
syntax on

" Automatic indenting
set cindent

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

" Set header files to be c files by default!
autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen

