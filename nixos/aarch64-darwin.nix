{ config, pkgs, homebrew-core, homebrew-cask, sops-nix, ... }:

{
  imports = [ ./hardware/darwin-shared.nix ];

  # Lots of stuff that uses aarch64 that claims doesn't work, but actually works.
  nixpkgs.config.allowUnsupportedSystem = true;

  nix-homebrew = {
    # Apple Silicon Only: Also install Homebrew under the default Intel prefix for Rosetta 2
    enableRosetta = true;
  };
}
