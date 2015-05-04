## VIM
# Which plugins I use
* [NERD Tree](https://github.com/scrooloose/nerdtree) - Folder explorer panel to find/open/create/etc files (F2).
* [Fugitive](https://github.com/tpope/vim-fugitive) - Git commands in VIM
* [surround.vim](https://github.com/tpope/vim-surround) - Change surrounding items, eg. "Hello" to 'Hello' (cs"').
* [CtrlP](https://github.com/kien/ctrlp.vim) - Fuzzy file finder (ctrl+p).
* [Solarized](https://github.com/altercation/vim-colors-solarized) - Colorscheme for Vim.
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - Sublime Text-like multiple curors (ctrl+n to go to next word).

## Setup
Make sure your VIM is up-to-date (this is only test with VIM >7.3), eg. for linux:

> sudo apt-get install vim

In your root directory (cd ~), get the latest code from the repo:
  
>  git clone git@github.com:iagoEffting/dotfiles.git

Create symbolic link so that ~/.vimrc points to the ~/dotfiles/.vimrc file:

>  ln -s ~/dotfiles/.vimrc ~/.vimrc

Create symbolic link so that ~/.vim/ points to the ~/dotfiles/.vim/ file:

>  ln -s ~/dotfiles/.vim ~/.vim

