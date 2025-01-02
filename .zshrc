# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load Oh My Zsh configuration
source $ZSH/oh-my-zsh.sh

# Path to personal dotfiles
export DOTFILES=$HOME/.dotfiles

# gpg
export GPG_TTY=$(tty)

# Path configuration
export PATH=$PATH
export PATH=$PATH:/opt/homebrew/opt/gnupg@2.2/bin

# Load aditional (optional) configuration files
[ -s $DOTFILES/.rc/.vulkanrc ] && source $DOTFILES/.rc/.vulkanrc
[ -s $DOTFILES/.rc/.bunrc ] && source $DOTFILES/.rc/.bunrc
[ -s $DOTFILES/.rc/.gorc ] && source $DOTFILES/.rc/.gorc

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

alias rasp="kitten ssh slingercode@raspberry"

# Git aliases
alias st="git status"
alias fetch="git fetch"
alias log="git log --show-signature --stat-width=100"
alias logo="git log --oneline"

# npm aliases
alias npml="npm list -g --depth=0"

# fnm
eval "$(fnm env --use-on-cd)"

# Set starship as shell
eval "$(starship init zsh)"

source <(fzf --zsh)

