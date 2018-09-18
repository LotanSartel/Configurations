# x relative settings
#bash ~/.xinitrc

# Show the git branch on PS1.
parse_git_branch() {
     git branch 2> /dev/null | sed -e 's/* \(.*\)/ (\1)/'
}

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

USER='Lotan-Pi'

alias tmux='tmux -2'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cls='clear'
alias temp="LD_LIBRARY_PATH=/opt/vc/lib && /opt/vc/bin/vcgencmd measure_temp"


export TERM=xterm-256color
export PS1="\[\033[38;5;34m\]\${USER}\[\033[38;5;76m\]@\[\033[38;5;178m\]\A | $(temp|cut -d = -f 2)\[\033[38;5;101m\]\$(parse_git_branch) \[\033[00m\]\w \$ "

EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim
