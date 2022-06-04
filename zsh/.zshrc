# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="w00t0r"

CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)

# Aliases
alias ls='ls --color=auto'
alias lh='ls -hl --color=auto'
alias la='ls -hAl --color=auto'
alias grep='grep --color=auto'

alias zshrc='vim $HOME/.zshrc'
alias vimrc='vim $HOME/.vimrc'

source $ZSH/oh-my-zsh.sh

alias node-docker='docker run -ti -v "$PWD":/usr/src/app -w /usr/src/app -p 3000:3000 node:14'
alias vim='nvim'
