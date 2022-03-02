# colours
autoload -Uz colors && colors
eval "$(oh-my-posh --init --shell zsh --config '~/.config/posh/config.json')"
# useful Functions
source "$ZDOTDIR/functions"

# set history directory
HISTFILE=~/.zsh_history

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# Normal files to source
zsh_add_file "vim-mode"
zsh_add_file "aliases"
zsh_add_file "exports"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# beeping is annoying
unsetopt BEEP

# to use local modules like prettier
export PATH="$PATH:./node_modules/.bin" 
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.local/bin:$PATH

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# run ls (alias version) on directory change
chpwd() ls
