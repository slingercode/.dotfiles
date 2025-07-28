# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load Oh My Zsh configuration
source $ZSH/oh-my-zsh.sh

# Load secrets
[ -s $DOTFILES/secrets/.secretsrc ] && source $DOTFILES/secrets/.secretsrc

[ -s $DOTFILES/.rc/.sopsrc ] && source $DOTFILES/.rc/.sopsrc

# Load private configuration
[ -s $DOTFILES/secrets/.privaterc ] && source $DOTFILES/secrets/.privaterc

# Temporal aliases
alias vim="nvim"
alias cat="bat"
alias grep="rg"

# Personal aliases
alias dot="cd ~/.dotfiles"
alias config="vim ~/.zshrc"
alias vimconf="vim ~/.config/nvim/init.vim"

alias home="cd $HOME"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias dev="cd ~/Documents/develop"

alias rasp="ssh slingercode@raspberry"

# Git aliases
alias st="git status"
alias fetch="git fetch"
alias log="git log --show-signature --stat-width=100"
alias logo="git log --oneline"

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
