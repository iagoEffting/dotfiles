syntax on
filetype off

" ==== Theme ==== 
colorscheme solarized
let g:solarized_termcolors=256
syntax enable

" ==== General Configs ====
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

" HTML, CSS, js, json
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
Bundle "groenewege/vim-less.git"

" Git
Plugin 'airblade/vim-gitgutter'
Bundle "mattn/webapi-vim.git"
Plugin 'L9'

" Text editing
Bundle "terryma/vim-multiple-cursors"

" Vim
Bundle "tpope/vim-surround.git"

" Cosmetics, color scheme, Powerlines...
Plugin 'mmozuras/vim-github-comment'

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
