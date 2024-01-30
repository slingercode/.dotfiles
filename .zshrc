# gpg
export GPG_TTY=$(tty)

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

# Personal aliases
alias vim="nvim"
alias cat="bat"
alias dot="cd ~/.dotfiles"
alias config="vim ~/.zshrc"
alias vimconf="vim ~/.config/nvim/init.vim"

alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias dev="cd ~/Documents/develop"

# Git aliases
alias st="git status"
alias fetch="git fetch"
alias log="git log --show-signature --stat-width=100"
alias logo="git log --oneline"

# Jumping words MacOs (Kitty terminal only)
bindkey "\e[1;3D" backward-word   # ⌥ + <-
bindkey "\e[1;3C" forward-word    # ⌥ + ->

# npm aliases
alias npml="npm list -g --depth=0"

# fnm
eval "$(fnm env --use-on-cd)"

# Set starship as shell
eval "$(starship init zsh)"
