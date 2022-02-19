# Dev Configuration Setup

## Getting Started

**NOTE:** This readme assumes you are running on a computer running MacOS.

To store your dotfiles you will want to use a bare git repository.
Learn more about them here before proceeding https://www.atlassian.com/git/tutorials/dotfiles

Tips:

- Don't pull into a bare git repository
- Don't cd into a bare git repository (perform commands from `$HOME`)

## Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```
chmod -R +x .macos
./.macos
```

## Install Homebrew formulae

When setting up a new Mac, you may want to install some common Homebrew formulae.

```
chmod -R +x ./brew.sh
./brew.sh
```

## Setup Node with Global Permissions

1. Make a directory for NVM.

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

2. Install and verify the latest version of node is working.

```
nvm install --lts
node --version
# => v10.16.3
```

3. Give Node global permissions (won't need sudo)

```
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
```

## IDE

![image](https://user-images.githubusercontent.com/35639417/147967100-96f9dd12-26f3-4e13-9d40-e05f9a174e66.png)
![image](https://user-images.githubusercontent.com/35639417/147967067-f6d91fe5-7668-4227-a54b-a498630a833d.png)

1. Install python support (node is optional).

```
pip3 install pynvim
```

Neovim node support

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
npm install -g eslint_d
```

6. Install any necessary packages for lsp servers.

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

7. Execute the below command to check the health of your IDE.

```
:checkhealth
```

## Shell

Change your default system shell to `/bin/zsh` if not done already.

```
chsh -s /bin/zsh
```

OR

```
System Preferences -> Users and Groups -> Advanced Configuration
```

## Terminal

![image](https://user-images.githubusercontent.com/35639417/147966952-61a57bf9-0304-4bd6-a300-ea688171631b.png)

1. Install fzf.

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

2. Install a tmux package manager

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
```

Install plugins by pressing `prefix + I` inside a tmux window.

3. Give alacritty full permissions.

```
System Preferences -> Security & Privacy -> Privacy -> Full Disk Access
```

## Miscellaneous Mac Tips

1. Remove the Mac Dock.

I find that the Mac doc uses a lot of screen real-estate. I suggest setting it to the smallest size and disregarding it all together.

2. Bring Vim to your Browser.

Install [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en) for Google Chrome (enables vim keybinds). The options I use are as follows.

```
map H previousTab
map L nextTab
map <C-h> goBack
map <C-l> goForward
```

3. Remove clutter from the Finder.

Hit `Finder -> Preferences` and remove tabs/items that you do not use regularily.

4. Bring Vim to MacOS.

Use Karabiner elements to add basic Vim keybindings to Mac OS.

5. Disable Spotlight and use Alfred instead.

Uncheck `System Preferences -> Spotlight -> Keyboard Shortcuts -> Show Spotlight Search`.
