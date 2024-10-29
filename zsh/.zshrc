#!/bin/zsh

# Shell language
export LANG="en_US.UTF-8"
alias git='LANG=en_US git'

# prompt
# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info

# This line obtains information from the vcs.
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '✚'
zstyle ':vcs_info:*' unstagedstr '●'
zstyle ':vcs_info:*' formats '(%s)-[%b]'
#zstyle ':vcs_info:*' actionformats ' %u%c'
 
BLUE=69
GREEN=28
RED=160
PURPLE=56
TIME="[%D %*]"
USERNAME="%n"
HOSTNAME="%M"
PTH="%d"
STATUS="%F{%(0?.${GREEN}.${RED})}(%?) %f"

setopt PROMPT_SUBST

precmd() {
  vcs_info
}

PROMPT='${TIME} %F{${BLUE}}${USERNAME}@${HOSTNAME}%f %F{${GREEN}}${PTH}%f %F{$PURPLE}${vcs_info_msg_0_}%f ${STATUS} '$'\n'"> "

# console colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# common command aliases
alias ll='ls -lah'
alias grep='grep -n --color'
alias weather='curl -s "http://wttr.in/Porto?pqF"'

# ssh aliases
alias ssh='TERM=xterm-256color ssh'

# binds
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

