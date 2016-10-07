source ~/.vimrc

tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <leader>tl <C-W><C-v> :terminal<cr>
nnoremap <leader>tj <C-W><C-s> :terminal<cr>
nnoremap <silent> <leader>tn :tabnew <bar> :terminal<cr>
nnoremap <leader>tt :terminal<cr>

"enable deoplete
let g:deoplete#enable_at_startup = 1

" With deoplete.nvim
let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}
