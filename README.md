# Dev Configuration Setup

## Getting Started

**NOTE:** This readme assumes you are running on a computer running MacOS.

To store our dotfiles we are using a git bare repository. Learn more about them here before proceeding
https://www.atlassian.com/git/tutorials/dotfiles

- Don't pull into a bare git repository
- Don't cd into a bare git repository (perform commands from $HOME)

1. Clone the repository into your systems configuration directory.

```
git clone https://github.com/RahulAggarwal1016/DevConfiguration.git ~/.config
```

2. Install Homebrew.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Install useful utilities.

```
brew install wget bat lsd tree
```

## Setup Node with Global Permissions

1. Remove existing Node versions.

```
brew uninstall --ignore-dependencies node
brew uninstall --force node
```

2. Install and setup NVM.

```
brew update
brew install nvm
```

Make a directory for NVM.

```
mkdir ~/.nvm
```

Add the below lines to `~/.config/zsh/.zshrc`.

```
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
```

Source your profile and ensure nvm is installed by running the following command.

```
command -v nvm
```

3. Install and verify the latest version of node is working.

```
nvm install --lts
node --version
# => v10.16.3
```

4. Give Node global permissions (won't need sudo)

```
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
```

Ensure that your `.zshrc` has the following export path statement

```
export PATH=~/.npm-global/bin:$PATH
```

## IDE

![image](https://user-images.githubusercontent.com/35639417/147967100-96f9dd12-26f3-4e13-9d40-e05f9a174e66.png)
![image](https://user-images.githubusercontent.com/35639417/147967067-f6d91fe5-7668-4227-a54b-a498630a833d.png)

1. Ensure latest version of neovim is installed.

```
brew install neovim
```

2. Install python support (node is optional).

Neovim python support (https://www.python.org/downloads/)

```
pip3 install pynvim
```

Neovim node support (https://nodejs.org/en/)

```
npm i -g neovim
```

3. Install all necessary plugins (you will see treesitter installing a bunch of parsers the first time neovim is loaded).

```
cd ~/.config/nvim && nvim
```

4. Install a language server protocol. Run `:LspInstallInfo` and hit `i` over the different servers you wish to use.

5. Install any necessary add-ons for null-ls and formatting.

```
npm install -g @fsouza/prettierd
brew install black stylua
```

6. Install any necessary packages for lsp servers.

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

7. Execute the below command to check the health of your IDE.

```
:checkhealth
```

**TIP:** Remap `escape` to `caps` key (in system preferences -> keyboard -> modifier keys)

## Shell

1. Install zsh shell.

```
brew install zsh
```

2. Change your default system shell to `/bin/zsh` if not done already.

```
System Preferences -> Users and Groups -> Advanced Configuration
```

3. Create a `.zprofile` file in your home directory which contains the contents below.

```
# zsh config dir
export ZDOTDIR=$HOME/.config/zsh
```

## Terminal

![image](https://user-images.githubusercontent.com/35639417/147966952-61a57bf9-0304-4bd6-a300-ea688171631b.png)

1. Install Alacritty

```
brew install --cask alacritty
```

2. Ensure Hack Nerd Fonts are installed.

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

3. Install ripgrep and fzf.

```
brew install ripgrep
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

4. Install ranger and its icons.

```
brew install ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

5. Install a tmux package manager

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
```

Install plugins by pressing `prefix + I` inside a tmux window.

6. Give alacritty full permissions.

```
System Preferences -> Security & Privacy -> Privacy -> Full Disk Access
```
