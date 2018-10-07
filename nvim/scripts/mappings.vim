" Map Leader VR to opening my vimrc in a vertical split
nnoremap <leader>vr :vsplit ~/.config/nvim <cr>
nnoremap <leader>vrs :source ~/.config/nvim/init.vim <cr>

" No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Map C-n to opening a new tab
nnoremap <silent> <C-n> :tabnew<CR>

" Map C-x to closing a tab
nnoremap <silent> <C-x> :tabclose<CR>

" Mappings for navigating panes
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>

" gf mappings
nmap <leader>gf <C-w>gf

nnoremap gy ggyG
nnoremap <leader>g gg=G

"toggle spell check
nnoremap <leader>s :set spell!<cr>

"Use alt for incrementing and decrementing
nnoremap å <C-a>
nnoremap ≈ <C-x>

"Because i'm bad
:command WQ wq
:command Wq wq
:command W w
:command Q q

" open a vertical slpit
nnoremap <leader>v :vsplit<CR>

" split on commas within a block
map <leader>bp f}%cSBBj:s/,/,\r/g<CR>$xa,<ESC>viB==
