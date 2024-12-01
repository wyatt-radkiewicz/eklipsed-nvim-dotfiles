" Undo directory/undo saving
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir

" Don't highlight searches and incrementally do search as you type
set nohlsearch
set incsearch

" Wrap text
set nowrap
set colorcolumn=80,100

" Always center cursor somewhat
set scrolloff=8

" Set realive line number and set line padding
set nu
set nuw=4
set relativenumber

" Make it so that the view doesn't change when an inlay hint is present
set signcolumn=yes

" Misc settings
set updatetime=50
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

" Function to set tab size
function! TabStyle(size, expand, global)
	let l:dolocal = a:global ? '' : 'local'
	exe 'set'..l:dolocal..' '..(a:expand ? '' : 'no')..'expandtab'
	exe 'set'..l:dolocal..' shiftwidth='..a:size
	exe 'set'..l:dolocal..' tabstop='..a:size
endfunction

" Set default tab size and set cindent
set cindent
call TabStyle(8,v:false,v:true)

" Colorscheme
colorscheme github_dark_default

