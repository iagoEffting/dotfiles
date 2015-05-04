syntax on
filetype off

" ==== Theme ==== 
colorscheme gruvbox
set bg=dark

" ==== General Configs ====
let mapleader=","
set title
set linebreak                           " smarter wordwrap
set nocompatible                        " be iMproved, required
set more                                " listings pause when the whole screen is filled
set nowrap                              " wordwrap turned off
set number                              " turn on line numbers
set report=0                            " always report changes
set ruler                               " always show current position in file
set showfulltag                         " show full completion tags
set showmode                            " show mode on last line of the screen
set linebreak
set cursorline

" ==== Git Config ====
let g:snips_author = "Iago Effting"
let g:github_user = "iagoEffting"

" ==== Indentation ====
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ==== Search ====
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
nnoremap <cr> :nohlsearch<cr>

" ==== Swap Files OFF ====
set noswapfile
set nobackup
set nowb

" ==== Plugins ====
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'L9'

" Text editing
Bundle "terryma/vim-multiple-cursors"
Bundle "tpope/vim-surround.git"

" Search
Bundle "rking/ag.vim"

call vundle#end()
filetype plugin indent on

" ==== Completion ====
set wildmode=list,longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" CtrlP shortcuts
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Increase CtrlP power with GIT
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_open_new_file = 'r'

" NERDTree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ==== Extra and personal ====
" Disable mouse scroll wheel
:nmap <ScrollWheelUp> <nop>
:nmap <S-ScrollWheelUp> <nop>
:nmap <C-ScrollWheelUp> <nop>
:nmap <ScrollWheelDown> <nop>
:nmap <S-ScrollWheelDown> <nop>
:nmap <C-ScrollWheelDown> <nop>
:nmap <ScrollWheelLeft> <nop>
:nmap <S-ScrollWheelLeft> <nop>
:nmap <C-ScrollWheelLeft> <nop>
:nmap <ScrollWheelRight> <nop>
:nmap <S-ScrollWheelRight> <nop>
:nmap <C-ScrollWheelRight> <nop>

" Disable arrows keyboard
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
