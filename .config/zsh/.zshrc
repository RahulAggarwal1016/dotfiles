# colours
autoload -Uz colors && colors

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

export PATH="$PATH:~/Library/Python/3.8/bin"
export PATH="$PATH:./node_modules/.bin" # to use local modules like prettier
export PATH="$PATH:~/.npm-global/bin"
export PATH="$PATH:~/.local/bin"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. ~/.config/zsh/z.sh

# run ls (alias version) on directory change
chpwd() ls

# Set typewritten ZSH as a prompt (load after exports)
autoload -U promptinit; promptinit
prompt typewritten
