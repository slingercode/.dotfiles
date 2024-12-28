export VULKAN_SDK=/Users/slingercode/Documents/develop/VulkanSDK/1.3.290.0/macOS
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_ICD_FILENAMES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d

export BUN_INSTALL=$HOME/.bun

export GOPATH=$HOME/go

# gpg
export GPG_TTY=$(tty)

export PATH=$PATH
export PATH=$PATH:$BUN_INSTALL/bin
export PATH=$PATH:$GOPATH:$HOME/go/bin
export PATH=$PATH:$VULKAN_SDK/bin
export PATH=$PATH:/opt/homebrew/opt/gnupg@2.2/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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

# bun completions
[ -s "/Users/slingercode/.bun/_bun" ] && source "/Users/slingercode/.bun/_bun"

source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)

