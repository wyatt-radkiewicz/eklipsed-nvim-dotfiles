" Key mapping

" Set the leader to space
let mapleader=" "

" Open file viewer
nnoremap <leader>pv	<Cmd>Ex<CR>

" Format current buffer
nnoremap <leader>f	<Cmd>Format<CR>

" Goto next and previous tabs/buffers
nnoremap <silent> <A-,>	<Cmd>BufferPrevious<CR>
nnoremap <silent> <A-.>	<Cmd>BufferNext<CR>

" Reorder tabs/buffers
nnoremap <silent> <A-[>	<Cmd>BufferMovePrevious<CR>
nnoremap <silent> <A-]>	<Cmd>BufferMoveNext<CR>

" Close tab/buffer
nnoremap <silent> <A-c>	<Cmd>BufferClose<CR>

