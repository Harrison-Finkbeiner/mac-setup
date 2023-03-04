# File: macSetup.sh
# Author: Harrison Finkbeiner
# Purpose: Set up a mac environment with programs that will
# add functionality to the terminal and download software that I 
# will need to use.

#!/bin/bash

# Sets settings for vim needs to have vimSettings.txt file 
# upload file to get in repo with bash files

vimSettings='cat vimSettings.txt' 
${vimSettings} > ~/.vimrc


## install xcode command-line tools
xcode-select --install

## install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


## install mongodb
brew tap mongodb/brew
brew update
brew install mongodb-community@6.0

## install nodejs and npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
## source ~/.bashrc in the file  ~/.bash_profile needs to be written
nvm install node
nvm use node

## install tree
brew install tree

## install tmux - github page: https://github.com/tmux/tmux
brew install tmux

## install fzf - github page: https://github.com/junegunn/fzf
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

