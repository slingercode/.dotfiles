{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    age
    bat
    fzf
    gnupg
    neovim
    openssl
    ripgrep
    sops
    starship
    tree-sitter
    vim
  ];
}
