## VIM
# Which plugins I use
### Basic
* [NeoBundle](https://github.com/Shougo/neobundle.vim) - NeoBundle is a next generation Vim plugin manager.
* [NERD Tree](https://github.com/scrooloose/nerdtree) - Folder explorer panel to find/open/create/etc files (<leader>n == ,n).
* [Fugitive](https://github.com/tpope/vim-fugitive) - Git commands in VIM
* [CtrlP](https://github.com/kien/ctrlp.vim) - Fuzzy file finder (ctrl+p).
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) -  An extensible & universal comment vim-plugin 
* [vim-easymotion](https://github.com/easymotion/vim-easymotion) - EasyMotion provides a much simpler way to use some motions in vim.
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - A Vim plugin which shows a git diff in the 'gutter' (sign column) 
* [gist-vim](https://github.com/mattn/gist-vim) - This is a vimscript for creating gists
* [surround.vim](https://github.com/tpope/vim-surround) - Change surrounding items, eg. "Hello" to 'Hello' (cs"').
* [vim-airline](https://github.com/vim-airline/vim-airline) - Lean & mean status/tabline for vim that's light as air. 
* [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) - When you open a markdown file in vim, a browser window will open which shows the compiled markdown in real-time
* [ag.vim](https://github.com/rking/ag.vim) - Search recursively in {directory} (which defaults to the current directory) for the {pattern}. 
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - Sublime Text-like multiple curors (ctrl+n to go to next word).

### PHP
* [vim-php-namespace](https://github.com/arnaud-lb/vim-php-namespace) - vim plugin for inserting "use" statements automatically. 
* [vim-phpqa](https://github.com/joonty/vim-phpqa) - Integrates PHP quality checking tools

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

Install NeoBundle for management your Plugins

> mkdir -p ~/.vim/bundle
> git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

Crate a symbolic link so that ~/.zshrc points to the ~/dotfiles/.zshrc

> ln -s ~/dotfiles/.zshrc ~/.zshrc

Close your bash and open again.

Enjoy!
