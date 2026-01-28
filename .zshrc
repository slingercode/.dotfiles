# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load Oh My Zsh configuration
source $ZSH/oh-my-zsh.sh

# Path to personal dotfiles
export DOTFILES=$HOME/.dotfiles

# Path configuration
export PATH=$PATH

# Load secrets
[ -s $DOTFILES/secrets/.secretsrc ] && source $DOTFILES/secrets/.secretsrc

# Load dependencies (fzf, cmake, etc...)
[ -s $DOTFILES/.rc/.depsrc ] && source $DOTFILES/.rc/.depsrc

# Load additional (optional) configuration files
[ -s $DOTFILES/.rc/.bunrc ] && source $DOTFILES/.rc/.bunrc
[ -s $DOTFILES/.rc/.gorc ] && source $DOTFILES/.rc/.gorc
[ -s $DOTFILES/.rc/.gpgrc ] && source $DOTFILES/.rc/.gpgrc
[ -s $DOTFILES/.rc/.homebrewrc ] && source $DOTFILES/.rc/.homebrewrc
[ -s $DOTFILES/.rc/.pnpmrc ] && source $DOTFILES/.rc/.pnpmrc
[ -s $DOTFILES/.rc/.sopsrc ] && source $DOTFILES/.rc/.sopsrc
[ -s $DOTFILES/.rc/.vulkanrc ] && source $DOTFILES/.rc/.vulkanrc
[ -s $DOTFILES/.rc/.zigrc ] && source $DOTFILES/.rc/.zigrc

# Load private configuration
[ -s $DOTFILES/secrets/.privaterc ] && source $DOTFILES/secrets/.privaterc

# Personal aliases
alias dot="cd ~/.dotfiles"
alias config="vim ~/.zshrc"
alias vimconf="vim ~/.config/nvim/init.vim"

alias home="cd $HOME"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias dev="cd ~/Documents/develop"

# Git aliases
alias st="git status"
alias fetch="git fetch"
alias log="git log --show-signature --stat-width=100"
alias logo="git log --oneline"

