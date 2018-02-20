""""""""""""""""""""""""""""""
"           AIRLINE          "
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

""""""""""""""""""""""""""""""
"            ALE             "
""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\}

let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\}

""""""""""""""""""""""""""""""
"          BASE16            "
""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  set background=dark
  source ~/.vimrc_background
endif

""""""""""""""""""""""""""""""
"           EMMET            "
""""""""""""""""""""""""""""""
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
      \}
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

""""""""""""""""""""""""""""""
"       NVIM-TYPESCRIPT      "
""""""""""""""""""""""""""""""
let g:nvim_typescript#javascript_support = 1

""""""""""""""""""""""""""""""
"     TRIM WHITESPACE        "
""""""""""""""""""""""""""""""
autocmd BufWritePre * StripWhitespace

""""""""""""""""""""""""""""""
"           VIM-GO           "
""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_auto_type_info = 1
set updatetime=100

au FileType go nmap <leader>gd <Plug>(go-def-vertical)

""""""""""""""""""""""""""""""
"       VIM-JSX-PRETTY       "
""""""""""""""""""""""""""""""
let g:vim_jsx_pretty_colorful_config = 1
