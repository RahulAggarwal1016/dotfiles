#!/usr/bin/env bash
brew update

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

brew uninstall --ignore-dependencies node
brew uninstall --force node

# Install more recent versions of some macOS tools.
brew install openssh
brew install grep 

# Install packages
brew install git 
brew install neovim
brew install python3
brew install zsh
brew install tmux
brew install yarn
brew install nvm

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
brew install tig
brew install mysql@5.7
# for ccls lsp server (for c++)
brew install llvm 
brew install cmake
brew install ccls

# Applications
brew install --appdir="/Applications" google-chrome
brew install --appdir="/Applications" slack
brew install --appdir="/Applications" spotify
brew install --appdir="/Applications" postman
brew install --appdir="/Applications" appcleaner
brew install --appdir="/Applications" alacritty
brew install --appdir="/Applications" docker
brew install --appdir="/Applications" discord
brew install --appdir="/Applications" mysqlworkbench
brew install --appdir="/Applications" alfred
brew install --appdir="/Applications" karabiner-elements
brew install --appdir="/Applications" alt-tab
brew install --appdir="/Applications" amethyst
brew install --appdir="/Applications" visual-studio-code

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Remove outdated versions from the cellar.
brew cleanup
