# don't put duplicate lines or lines starting with space in the history.
# don't put duplicate commands in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups
# ignore simple commands that should not clutter history
HISTIGNORE='ls:history:superior-reverse-history-search'
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# append for more data that can be searched by superior-reverse-history-search
PROMPT_COMMAND='history -a'
