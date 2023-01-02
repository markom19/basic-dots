# Basic stff
source ~/.config/zsh/.zprofile
export TERM="xterm-256color"
export HISTFILE=~/.config/zsh/.zsh_history

export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
PATH=$PATH:$HOME/.scripts 
bindkey -v # vi-mode
autoload -Uz compinit && compinit 
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Prompt Settings
declare -a PROMPTS
PROMPTS=(
    "∮"
    "∯"
    "≎"
    ""
    ""
    ""
    ""
    ""
    ""
)
RANDOM=$$$(date +%s)
ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}+1]}
PROMPT='%F{yellow}%1~%f %F{green}$ignition%f '

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Aliases
alias s='startx'
alias v='nvim'
alias g='gedit'
alias f='ranger'
alias pac='sudo pacman'
alias ls='lsd'
alias kill='killall -q'
alias wal='feh --bg-fill -z'
alias visudo='EDITOR=nvim visudo'
alias reset='cd ~; clear; source ~/.config/zsh/.zshrc'
alias fetch='clear && neofetch && fortune ~/.scripts/quotes/quotes'
alias suck='rm -f config.h ; sudo make install'
alias ddate='date +"%R - %a, %B %d, %Y" | xclip -select clipboard && date +"%R - %a, %B %d, %Y"' 
alias dday='date +"%Y.%m.%d - " | xclip -select clipboard ; date +"%Y.%m.%d"'

