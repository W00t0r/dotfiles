# Path to your oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="w00t0r"

# Aliases
alias ls='ls --color=auto'
alias lh='ls -hl --color=auto'
alias la='ls -hAl --color=auto'
alias synthuis='killall synergyc; synergyc 192.168.1.116'
alias grep='grep --color=auto'
alias chromium='chromium --proxy-server="socks://127.0.0.1:9060" --incognito check.torproject.org'
alias redshift='redshift -l 53.15:6.35'
alias sshtunnel='sh /home/wouter/Scripts/sshtunnel'
alias W00t0r-VPS='ssh -p 8861 141.138.140.242'
alias W00t0r-VPS-runserver='ssh -p 8861 141.138.140.242 -L 1234:localhost:1234'
alias run='python manage.py runserver $1'

alias zshrc='vim $HOME/.zshrc'
alias vimrc='vim $HOME/.vimrc'

alias monitorrechts='xrandr --output VGA-0 --mode 1280x1024 && xrandr --auto --output LVDS --mode 1280x800 --primary --left-of VGA-0'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial)

source $ZSH/oh-my-zsh.sh

export WORKON_HOME=~/.virtualenvs
export VIRTUAL_ENV_DISABLE_PROMPT='True'
source /usr/bin/virtualenvwrapper.sh
