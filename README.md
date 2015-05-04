## VIM
# Which plugins I use
* [NERD Tree](https://github.com/scrooloose/nerdtree) - Folder explorer panel to find/open/create/etc files (<leader>n == ,n).
* [Fugitive](https://github.com/tpope/vim-fugitive) - Git commands in VIM
* [surround.vim](https://github.com/tpope/vim-surround) - Change surrounding items, eg. "Hello" to 'Hello' (cs"').
* [CtrlP](https://github.com/kien/ctrlp.vim) - Fuzzy file finder (ctrl+p).
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - Sublime Text-like multiple curors (ctrl+n to go to next word).
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - A Vim plugin which shows a git diff in the 'gutter' (sign column) 
* [ag.vim](https://github.com/rking/ag.vim) - Search recursively in {directory} (which defaults to the current directory) for the {pattern}. 


## Setup
# Dependencies
Make sure your VIM is up-to-date (this is only test with VIM >7.3), eg. for linux:

> sudo apt-get install vim

Install zsh for a more powerfull bash

> sudo apt-get install zsh

and Install Oh-my-zsh for customize this bash
Link for [oh-my-zsh quick Installation](https://github.com/robbyrussell/oh-my-zsh)

# Configuration
In your root directory (cd ~), get the latest code from the repo:
  
>  git clone git@github.com:iagoEffting/dotfiles.git

Create symbolic link so that ~/.vimrc points to the ~/dotfiles/.vimrc file:

>  ln -s ~/dotfiles/.vimrc ~/.vimrc

Create symbolic link so that ~/.vim/ points to the ~/dotfiles/.vim/ file:

>  ln -s ~/dotfiles/.vim ~/.vim

Crate a symbolic link so that ~/.zshrc points to the ~/dotfiles/.zshrc

> ln -s ~/dotfiles/.zshrc ~/.zshrc

Close your bash and open again.
