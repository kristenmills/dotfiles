""""""""""""""""""""""""""""""
"            ACK             "
""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""""""""""""""""""""""""""""""
"           AIRLINE          "
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline#extensions#ale#enabled = 1

""""""""""""""""""""""""""""""
"            ALE             "
""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\}

let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\   'go': ['go build'],
\}

let g:ale_go_gometalinter_options = "--fast"
let g:ale_lint_delay = 1000

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

""""""""""""""""""""""""""""""
"          BASE16            "
""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  set background=dark
  source ~/.vimrc_background
endif

""""""""""""""""""""""""""""""
"          CTRL-P            "
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

""""""""""""""""""""""""""""""
"           EMMET            "
""""""""""""""""""""""""""""""
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

""""""""""""""""""""""""""""""
"          NERDTREE          "
""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$', '\.swp$', '\.git/$', '\.pyc$', '\.emotion\.css$']
nmap <leader>t :NERDTreeToggle<CR>
nmap gt :NERDTreeFocus<CR>
nmap gtf :NERDTreeFind<CR>
autocmd vimenter * NERDTreeToggle
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""
"   NVIM-COMPLETION_MANAGER  "
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
" optional
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
" expand parameters
inoremap <expr><CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
imap <expr><Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-U>":"\<CR>")
let g:AutoPairsMapCR=0
imap <expr><CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>\<Plug>AutoPairsReturn")
let g:cm_refresh_length = [[1,4],[7,2]]

""""""""""""""""""""""""""""""
"       NVIM-TYPESCRIPT      "
""""""""""""""""""""""""""""""
let g:nvim_typescript#javascript_support = 1

""""""""""""""""""""""""""""""
"          SUPERTAB          "
""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"

""""""""""""""""""""""""""""""
"     TRIM WHITESPACE        "
""""""""""""""""""""""""""""""
autocmd BufWritePre * StripWhitespace

""""""""""""""""""""""""""""""
"           VIM-GO           "
""""""""""""""""""""""""""""""
" auto imports
let g:go_fmt_command = "goimports"

" real tabs
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2

" show  type info in the status line
let g:go_auto_type_info = 1

" syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
set updatetime=100

au FileType go nmap gdv <Plug>(go-def-vertical)
au Filetype go nmap gav <Plug>(go-alternate-vertical)
au Filetype go nmap ga <Plug>(go-alternate-edit)
au FileType go nmap gdd :GoDeclsDir<cr>

let g:go_addtags_transform = "snakecase"
let g:go_snippet_engine = "neosnippet"

""""""""""""""""""""""""""""""
"       VIM-JSX-PRETTY       "
""""""""""""""""""""""""""""""
let g:vim_jsx_pretty_colorful_config = 1
