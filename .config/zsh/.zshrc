# colours
autoload -Uz colors && colors

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten

# useful Functions
source "$ZDOTDIR/functions"

# some useful options (man zshoptions)
HISTFILE=~/.zsh_history # set history directory
unsetopt BEEP
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# Files to source
zsh_add_file "vim-mode"
zsh_add_file "aliases"
zsh_add_file "exports"

# Plugins
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

export PATH="$PATH:./node_modules/.bin" # to use local modules like prettier
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.local/bin:$PATH

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# run ls (alias version) on directory change
chpwd() ls
