" Key mapping

" Set the leader to space
let mapleader=" "

""""""""""""""""""""""""""""""""
" File mappings
""""""""""""""""""""""""""""""""
" Open file viewer
nnoremap <leader>pv	<Cmd>NvimTreeFocus<CR>

" Format current buffer
nnoremap <leader>f	<Cmd>Neoformat<CR>

" Goto next and previous tabs/buffers
nnoremap <silent> <A-,>	<Cmd>BufferPrevious<CR>
nnoremap <silent> <A-.>	<Cmd>BufferNext<CR>

" Reorder tabs/buffers
nnoremap <silent> <A-[>	<Cmd>BufferMovePrevious<CR>
nnoremap <silent> <A-]>	<Cmd>BufferMoveNext<CR>

" Close tab/buffer
nnoremap <silent> <A-c>	<Cmd>BufferClose<CR>

""""""""""""""""""""""""""""""""
" LSP Mappings
""""""""""""""""""""""""""""""""
" Goto definition
nnoremap gD <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap gr <Cmd>lua vim.lsp.buf.references()<CR>
nnoremap gs <Cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap gi <Cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gt <Cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>gw <Cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <leader>gW <Cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <leader>ah <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>af <Cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>ee <Cmd>lua vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>ar <Cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>= 'Cmdcmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>ai <Cmd>lua vim.lsp.buf.incoming_calls()<CR>
nnoremap <leader>ao <Cmd>lua vim.lsp.buf.outgoing_calls()<CR>

