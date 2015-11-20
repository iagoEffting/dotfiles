syntax on
filetype on

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
set backspace=indent,eol,start

" ====
" Note: Skip initialization 
if 0 | endif

if has('vim_starting')

  if &compatible
    set nocompatible  
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" ==== Plugins ====
call neobundle#begin(expand('~/.vim/bundle/'))

" let Vundle manage Vundle, required
NeoBundleFetch 'tpope/vim-fugitive'
NeoBundleFetch 'scrooloose/nerdtree'
NeoBundleFetch 'kien/ctrlp.vim'
NeoBundleFetch 'tomtom/tcomment_vim'

" Git
NeoBundleFetch 'airblade/vim-gitgutter'
NeoBundleFetch 'L9'

" Text editing
NeoBundleFetch "terryma/vim-multiple-cursors"
NeoBundleFetch "tpope/vim-surround.git"
NeoBundle 'bling/vim-airline'

" Search
NeoBundleFetch "rking/ag.vim"

" PHP
NeoBundle 'arnaud-lb/vim-php-namespace'

" Ruby
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
NeoBundle "tpope/vim-projectionist"
NeoBundle "thoughtbot/vim-rspec"
NeoBundle "majutsushi/tagbar"
NeoBundle "ecomba/vim-ruby-refactoring"

call neobundle#end()

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

" Airline
set laststatus=2

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
