ZSH_THEME=""
DISABLE_AUTO_UPDATE=true
plugins=(git)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

autoload -U promptinit
promptinit
PURE_PROMPT_SYMBOL=$
prompt pure

export TERM=xterm-256color
export EDITOR=vim
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias desktop='cd ~/Desktop'
alias develop='cd ~/develop'
alias cpu-temp="watch -n 0 'sensors'"

ec() { (emacsclient -c "$@" &> /dev/null &); }
whichg() { thunar $(dirname $(which "$1")); }
ignore() { eval "$@" > /dev/null 2>&1; }

# Pacman
alias pacman-prune="sudo pacman -Rns $(pacman -Qtdq | paste -sd ' ')"
alias pacman-recent="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"

# Git
alias gs="git status -sb"
alias gd="git diff"
alias gl="git lg"
git-toplevel() { cd $(git toplevel); }

# GNU Global
export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=new-ctags

# Set colors for ls
export LS_COLORS="tw=01;30:ow=01;34"

# Workaround for tmux drawing issues
alias htop="TERM=screen /usr/bin/htop"

# Disable terminal scroll lock
stty -ixon

