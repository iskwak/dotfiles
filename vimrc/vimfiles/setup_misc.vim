" searching
set incsearch
set hlsearch

" indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set autoindent
set smarttab
set bs=2

" display stuff
set laststatus=2
set ruler
"set showcmd
"set wildmenu
set wildmode=longest,list
set colorcolumn=80
set number

"" Set tags file to be the local folder .tags
set tags=./.tags;,.tags;$HOME

" Why is syntastic part of vim now? and why is it slow?
let g:syntastic_disabled_filetypes=['python']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" omnifunc
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" use alt+arrow keys to navigate windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
