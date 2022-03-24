# don't put duplicate lines or lines starting with space in the history.
# don't put duplicate commands in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it (is good for multiple connections)
shopt -s histappend

# The core of the repository:
# will search through the history and remove duplicates while remaining order of the entries.
# Then will make them searchable via fuzzy-finder
# will output the filtered command to your command-promt
alias superior-reverse-history-search='~/bin/inject.py $(history | sort -k2 -k 1,1nr | uniq -f1 | sort -n | cut -c 8- | fzf -e --height 30)'

# override binding for reverse-i-search ( Ctrl-r )
bind '"\C-r":"superior-reverse-history-search\n"'

# autocomplete commands from your history by using the arrow keys
# Source: https://www.pix-art.be/post/bash-history-completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
set show-all-if-ambiguous on
set completion-ignore-case on
