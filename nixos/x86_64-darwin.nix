{ config, pkgs, homebrew-core, homebrew-cask, sops-nix, ... }:

{
  imports = [ ./hardware/darwin-shared.nix ];
}
