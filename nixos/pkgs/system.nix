{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    age
    bat
    btop
    fzf
    gnupg
    neovim
    openssl
    ripgrep
    sops
    starship
    tree-sitter
    tmux
    tmuxinator
    vim
  ];
}
