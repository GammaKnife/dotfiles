####################################################
# ██████╗░░█████╗░░██████╗██╗░░██╗██████╗░░█████╗░ #
# ██╔══██╗██╔══██╗██╔════╝██║░░██║██╔══██╗██╔══██╗ #
# ██████╦╝███████║╚█████╗░███████║██████╔╝██║░░╚═╝ #
# ██╔══██╗██╔══██║░╚═══██╗██╔══██║██╔══██╗██║░░██╗ #
# ██████╦╝██║░░██║██████╔╝██║░░██║██║░░██║╚█████╔╝ #
# ╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░ #
####################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# █▀█ █▀█ █▀█ █▀▄▀█ █▀█ ▀█▀
# █▀▀ █▀▄ █▄█ █░▀░█ █▀▀ ░█░

# Set new prompt
PS1="\n \[\033[1;31m\]┌─────(\[\033[1;33m\]\u\[\033[1;32m\]@\[\033[1;33m\]\h\[\033[1;31m\])─────(\[\033[1;32m\]\w\[\033[1;31m\]) \n \[\033[1;31m\]└> \[\033[1;31m\]\$ \[\033[0m\]"


# ▄▀█ █░░ █ ▄▀█ █▀
# █▀█ █▄▄ █ █▀█ ▄█

# Change cat commands over to bat
alias cat="bat -pp"

# Change ls commands over to lsd
alias ls="lsd --group-dirs first"
alias tree="lsd --tree"

# Change top over to bashtop
alias top="btop"

# Set info to be neofetch
alias info="neofetch"

# Auto edit bashrc
alias bashrc="nvim ~/.bashrc && source ~/.bashrc"

# Change vim over to neovim
alias vim="nvim"

# Change ansible-playbook to have vault
alias ansible-playbook="ansible-playbook --ask-vault-pass"

# Change ip to color
alias ip="ip --color=auto"

# Change grep to color
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Change diff to color
alias diff="diff --color=auto"

# Common spelling errors
alias suod="sudo"
alias sl="lsd --group-dirs first"

# Make a directory and all parent directories with verbosity.
alias mkdir='mkdir -p -v'

# Prevent mistakes of deleting the wrong file
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -i'


# █▀▀ █▀█ █░░ █▀█ █▀█
# █▄▄ █▄█ █▄▄ █▄█ █▀▄

# Man
export LESS_TERMCAP_mb=$'\e[1;35m'
export LESS_TERMCAP_md=$'\e[1;35m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;35m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;33m'


# █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█
# █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░

# Don't duplicate lines or lines with space in the history file
export HISTCONTROL=ignoreboth

# Add date and time to history
export HISTTIMEFORMAT="%h %d %H:%M "

# Append to history file
shopt -s histappend

# Set history file size
HISTSIZE=5000
HISTFILESIZE=5000



