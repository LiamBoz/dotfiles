#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'

alias hpc='bluetoothctl connect 80:99:E7:5C:AB:5C'
alias hpd='bluetoothctl disconnect 80:99:E7:5C:AB:5C' 

PS1='[\u@\h \W]\$ '

# Created by `pipx` on 2025-02-18 03:30:30
export PATH="$PATH:/home/liam/.local/bin"
export PATH=~/.npm-global/bin::$PATH

source /usr/share/fzf/key-bindings.bash

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

fzfp() {
  local files
  files=$(fzf --multi --preview 'bat --style=numbers --color=always --line-range :500 {}') || return
  [ -n "$files" ] && echo "$files" | xargs -r -d '\n' nvim
}
