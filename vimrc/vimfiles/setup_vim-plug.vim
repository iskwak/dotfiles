call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" syntastic
Plug 'scrooloose/syntastic'

" jshint
"Plug 'wookiehangover/jshint.vim'

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" lightline
Plug 'itchyny/lightline.vim'

" lua stuff
"Plug 'vim-misc' | Plug 'xolox/vim-lua-ftplugin', {'for': 'lua' }
"Plug 'xolox/vim-lua-inspect'

" python stuff
Plug 'klen/python-mode'
"Plug 'davidhalter/jedi-vim'

" color themes
Plug 'junegunn/seoul256.vim'
Plug 'kristiandupont/shades-of-teal'
Plug 'widatama/vim-phoenix'
Plug 'wutzara/vim-materialtheme'

" Protobuf
"Plug 'uarun/vim-protobuf'
" Plug 'jdevera/vim-protobuf-syntax'

" markdown
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

" vim notes
" Plug 'xolox/vim-misc' | Plug 'xolox/vim-notes'

" auto update ctags
Plug 'craigemery/vim-autotag'

" ctrlp
" Plug 'ctrlpvim/ctrlp.vim'

" bazel plugin
" Plug 'google/vim-ft-bzl'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" example commands
" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Loaded when clojure file is opened
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Multiple file types
"Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
" On-demand loading on both conditions
"Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }
" Code to execute when the plugin is loaded on demand
"Plug 'Valloric/YouCompleteMe', { 'for': 'cpp' }
"autocmd! User YouCompleteMe call youcompleteme#Enable()
