" auto install extensions
let g:coc_global_extensions = [
  \ 'coc-lists',
  \ 'coc-css',
  \ 'coc-emoji',
  \ 'coc-highlight',
  \ 'coc-jest',
  \ 'coc-json',
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-styled-components',
  \ 'coc-tsserver',
  \ 'coc-yaml'
  \ ]

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocActionAsync('runCommand', 'editor.action.organizeImport')

""""""""""""""""""""""""""""""
"        CODE ACTIONS        "
""""""""""""""""""""""""""""""

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>lac  <Plug>(coc-codelens-action)
" Fix autofix problem of current line
nmap <leader>ff  <Plug>(coc-fix-current)

""""""""""""""""""""""""""""""
"         COMPLETION         "
""""""""""""""""""""""""""""""
" Use csr to confirm completion
inoremap <silent><expr> <cr>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>\<c-r>=AutoPairsReturn()\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <silent><expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <silent><expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

""""""""""""""""""""""""""""""
"       DOCUMENTATION        "
""""""""""""""""""""""""""""""

"gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>K <Plug>(coc-diagnostic-info):W

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""""""""""""""""""""""""""""""
"            JEST            "
""""""""""""""""""""""""""""""
" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

nnoremap <silent> <leader>tc :<C-U>JestCurrent<CR>

" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')

""""""""""""""""""""""""""""""
"      MULTIPLE CURSORS      "
""""""""""""""""""""""""""""""
" multiple cursor navigating (sublime controls)
nmap <expr> <silent> <C-d> <SID>select_current_word()
nnoremap <expr> <silent> <C-k> <SID>skip_current_word()

function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

function! s:skip_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "<C-k>"
  endif
  return "*:nohlsearch\<CR>"
endfunc

""""""""""""""""""""""""""""""
"           RENAME           "
""""""""""""""""""""""""""""""
nnoremap <silent> <Plug>(coc-rename-file) :<C-U>call CocActionAsync('runCommand', 'workspace.renameCurrentFile')<CR>

nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>rr <Plug>(coc-refactor)
nmap <silent> <leader>rf <Plug>(coc-rename-file)

