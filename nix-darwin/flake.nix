{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [
        pkgs.age
        pkgs.bat
        pkgs.bun
        pkgs.cmake
        pkgs.flyctl
        pkgs.fnm
        pkgs.fzf
        pkgs.gnupg
        pkgs.libllvm
        pkgs.neovim
        pkgs.openssl
        pkgs.pnpm
        pkgs.ripgrep
        pkgs.sops
        pkgs.sqlite
        pkgs.starship
        pkgs.tree-sitter
        pkgs.vim
        pkgs.zig
      ];

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;
      programs.zsh.enable = true;  # default shell on catalina

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      # nixpkgs.hostPlatform = "aarch64-darwin";
      nixpkgs.hostPlatform = "x86_64-darwin";
    };

  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#simple
    # darwinConfigurations."simple" = nix-darwin.lib.darwinSystem {
    #   modules = [ configuration ];
    # };

    darwinConfigurations."McQueen" = nix-darwin.lib.darwinSystem {
      modules = [ configuration ];
    };
  };
}
