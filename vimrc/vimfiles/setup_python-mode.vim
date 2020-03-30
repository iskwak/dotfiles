" file to setup python-mode plugin for vim.

" we want to use jedi-vim for code completion
let g:pymode = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_run = 1
"let g:pymode_run_bind = '<leader>r'
"let mapleader = ","

let g:pymode_folding = 0

let g:pymode_options = 0
" put stuff back, except numbered lines
setlocal complete+=t
setlocal formatoptions-=t
"if v:version > 702 && !&relativenumber
"    setlocal number
"endif
"setlocal nowrap
"setlocal textwidth=79
setlocal commentstring=#%s
setlocal define=^\s*\\(def\\\\|class\\)

" when autocomplete is on, this pops up a new window with the
" function documentation and is annoying
set completeopt=menu


let g:jedi#auto_initialization = 0
