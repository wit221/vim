"" Vundle
filetype off " Apparently required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim

"" Plugins start
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " plugin manager
Plugin 'scrooloose/nerdtree' " directory tree browse
Plugin 'Valloric/YouCompleteMe' " autocomplete
Plugin 'morhetz/gruvbox' " color theme
 
call vundle#end()            " required
filetype plugin indent on    " required
runtime macros/matchit.vim
"" Plugins end

"" General
set nocompatible    " Required or a lot of things
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=99	" Line wrap (number of cols)
set colorcolumn=100  " Show line limit
" colorscheme morning Replaced with gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set t_Co=256 " use 256 colorschemes for gruvbox
set bg=dark
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
 
" set smarttab	" Enable smart-tabs
filetype plugin indent on
set tabstop=2
set softtabstop=2	" Number of spaces per Tab
set expandtab " Spaces instead of tabs

set autoindent	" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
" smartindent commented out to prevent python hash go to 0th column
" set smartindent	" Enable smart-indent
" http://vim.wikia.com/wiki/Restoring_indent_after_typing_hash
" set cindent
" set cinkeys-=0#
" set indentkeys-=0#

"" Advanced
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar
 
set autochdir	" Change working directory to open buffer
 
set undolevels=1000	" Number of undo levels
set backspace=start	

" let g:NERDTreeWinPos = "right" " Open new file on the right side

"" Mappings
map <C-n> :NERDTree " Opening NERDTree
nmap ,n :NERDTreeFind<CR>
set pastetoggle=<F4>
set showmode

" Buffer transitions
nnoremap [b <silent> :bprevious<CR>
nnoremap ]b <silent> :bnext<CR>
nnoremap [B <silent> :bfirst<CR>
nnoremap ]B <silent> :blast<CR>

" Saving and restoring sessions
map <F2> :mksession! ~/.vim_session <CR> " Quick write session with F2
map <F3> :source ~/.vim_session <CR>     " And load session with F3

"" Startup commands
" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p

"" Teardown commands
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
