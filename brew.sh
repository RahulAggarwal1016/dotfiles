#!/usr/bin/env bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

brew uninstall --ignore-dependencies node
brew uninstall --force node

# Install more recent versions of some macOS tools.
brew install grep 
brew install openssh
brew install screen
brew install bash

# Install packages
brew install git 
brew install neovim
brew install python3
brew install zsh
brew install tmux
brew install yarn
brew install nvm
brew install gradle

# Install utility binaries
brew install trash-cli
brew install wget
brew install bat
brew install lsd
brew install tree
brew install black
brew install stylua
brew install ripgrep
brew install lf
brew install mysql@5.7

# Applications
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" alacritty
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" discord
brew cask install --appdir="/Applications" mysqlworkbench
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" karabiner-elements

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Remove outdated versions from the cellar.
brew cleanup
