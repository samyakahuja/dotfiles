# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='$(nice_prompt)'

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/firefox-developer-edition"

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias cp='cp -i'
alias df='df -h'
alias more=less
alias ca=cargo

shopt -s histappend
shopt -s expand_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
