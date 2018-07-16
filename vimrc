"" General
set nocompatible    " Required or a lot of things
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=99	" Line wrap (number of cols)
set colorcolumn=100  " Show line limit
set history=1000    " Ex cmd and search history limit

set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set ruler  " Show file stats
set autoread " Update based upon external changes to file
syntax on

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar
 
set autochdir	" Change working directory to open buffer
 
set undolevels=1000	" Number of undo levels
set backspace=start	

"" Vundle
filetype off " Apparently required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim

"" Plugins start
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
"" Plugins end

"" Mappins
map <C-n> :NERDTree " Opening NERDTree
set pastetoggle=<F3>
nnoremap [b <silent> :bprevious<CR>
nnoremap ]b <silent> :bnext<CR>
nnoremap [B <silent> :bfirst<CR>
nnoremap ]B <silent> :blast<CR>
