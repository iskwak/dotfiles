call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" syntastic
Plug 'scrooloose/syntastic'

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" lightline
Plug 'itchyny/lightline.vim'

" fugitive (git stuff)
Plug 'tpope/vim-fugitive'

" vim gutter
Plug 'airblade/vim-gitgutter', {'branch': 'main'}

" python stuff
"Plug 'klen/python-mode'

" color themes
Plug 'junegunn/seoul256.vim'
Plug 'kristiandupont/shades-of-teal'
Plug 'widatama/vim-phoenix'
Plug 'wutzara/vim-materialtheme'
Plug 'crusoexia/vim-monokai'

" markdown
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

" auto update ctags
Plug 'craigemery/vim-autotag'

" elixir
Plug 'elixir-editors/vim-elixir'

call plug#end()
