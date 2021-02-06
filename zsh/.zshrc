# User configuration

# Enable a few emacs-y shortcuts in Insert mode
bindkey -v
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line
bindkey "^K" kill-line
bindkey "^D" delete-char
bindkey "^F" vi-forward-char
bindkey "^B" vi-backward-char

# Generic bindings

# This will run 'history' if you just type 'h' or search through history if you
#   give it an argument like 'h foo'.
function h() {
    if [ -z "$*" ]; then
        history 1;
    else
        history 1 | egrep "$@";
    fi
}

# Generic aliases
#
# Don't use more. Use less. :)
alias more='less -FiM'
# Tell strings to search the whole file
alias strings='strings -a'
# Reattach tmux or start a new one if not
alias tmux='tmux a||tmux new'

# Find local config files
if [[ $OSTYPE == darwin* ]]; then
    source ~/.zsh_osx
    export PATH=/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:~/bin
else
    source ~/.zsh_unix
    export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:~/bin
fi

# We shall enable the One True Editor(tm) and only the One True Editor(tm):
export VISUAL=vi
export EDITOR=vi

# If you have host-specific things (stuff that's only useful on one host in particular),
#   create a .zsh_local on that host and put stuff in there!
if [ -f ~/.zsh_local ]; then
    . ~/.zsh_local
fi

