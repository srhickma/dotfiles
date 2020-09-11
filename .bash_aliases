# Alias definitions.

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Setup for dotfiles repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Setup emacs alias
alias e='emacsclient --tty'

# Python
alias python=python3
alias pip=pip3

# Copy and paste commands
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
