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
PS1="%F{green}──(%f%B%F{magenta}%n%f%b%F{green}@%f%B%F{magenta}%m%f%b%F{green})──(%B%F{yellow}%~%f%b%F{green}) $%f "


# ▄▀█ █░░ █ ▄▀█ █▀
# █▀█ █▄▄ █ █▀█ ▄█

# Find all alias here
. ~/.zshalias


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


# █▀▀ █░█ █▄░█ █▀▀ ▀█▀ █ █▀█ █▄░█ █▀
# █▀░ █▄█ █░▀█ █▄▄ ░█░ █ █▄█ █░▀█ ▄█

# Function to move up directories
function up {

  for ((i=1; i <= $1; i+=1))
  do
    cd ../
  done
}


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

# Enable reverse history Emacs style
bindkey "^R" history-incremental-search-backward

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

# Start shell with fzf
#function zle-fzf-init() {
#  source /usr/share/fzf/key-bindings.zsh
#  source /usr/share/fzf/completion.zsh 
#}

# Load Line editor 
zle -N zle-line-init
zle -N zle-keymap-select

