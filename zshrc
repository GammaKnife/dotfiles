############################################
# ███████╗░██████╗██╗░░██╗██████╗░░█████╗░ #
# ╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗ #
# ░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝ #
# ██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗ #
# ███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝ #
# ╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░ #
############################################

# █▀█ █▀█ █▀█ █▀▄▀█ █▀█ ▀█▀
# █▀▀ █▀▄ █▄█ █░▀░█ █▀▀ ░█░
PS1="%B%F{red}──(%f%F{yellow}%n%f%F{green}@%f%F{yellow}%m%f%F{red})──(%F{green}%~%f%F{red}) $%f "


# ▄▀█ █░░ █ ▄▀█ █▀
# █▀█ █▄▄ █ █▀█ ▄█

# Colors
# Change cat commands over to bat
alias cat="bat -pp"

# Change diff to color
alias diff="diff --color=auto"

# Change grep to color
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

# Change ip to color
alias ip="ip --color=auto"

# Change ls commands over to lsd
alias ls="lsd --group-dirs first"
alias tree="lsd --tree"

# Change diff to color
alias diff="diff --color=auto"

# Other settings
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
LESS_TERMCAP_mb=$'\e[1;35m'
LESS_TERMCAP_md=$'\e[1;35m'
LESS_TERMCAP_me=$'\e[0m'
LESS_TERMCAP_se=$'\e[0m'
LESS_TERMCAP_so=$'\e[1;35m'
LESS_TERMCAP_ue=$'\e[0m'
LESS_TERMCAP_us=$'\e[1;33m'


# █▀▀ █▀█ █▀▄▀█ █▀█ █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░
# █▄▄ █▄█ █░▀░█ █▀▀ █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄
zstyle :compinstall filename '/home/user/.zshrc'
autoload -Uz compinit
compinit


# █░█ █ █▀ ▀█▀ █▀█ █▀█ █▄█
# █▀█ █ ▄█ ░█░ █▄█ █▀▄ ░█░

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000


# █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
# ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█
unsetopt beep


# █▀ █▄█ █▄░█ ▀█▀ ▄▀█ ▀▄▀   █░█ █ █▀▀ █░█ █░░ █ █▀▀ █░█ ▀█▀ █ █▄░█ █▀▀
# ▄█ ░█░ █░▀█ ░█░ █▀█ █░█   █▀█ █ █▄█ █▀█ █▄▄ █ █▄█ █▀█ ░█░ █ █░▀█ █▄█

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

 
# █░█ █ █▀▄▀█
# ▀▄▀ █ █░▀░█

# Enable Vi mode
bindkey -v

# Remove mode switching delay 
KEYTIMEOUT=5

# Change cursor shape for different vi modes
function zle-keymap-select {
  # Change to solid block curser
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  # Change to line beam curser
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[6 q'
  fi
}

# Start shell with line beam curser
function zle-line-init() {
    echo -ne "\e[6 q"
}

# Load Line editor 
zle -N zle-line-init
zle -N zle-keymap-select
