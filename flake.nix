{
  description = "Nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-homebrew = {
      url = "github:zhaofengli/nix-homebrew";
    };

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nix-darwin,
    nix-homebrew,
    homebrew-core,
    homebrew-cask,
    home-manager,
    ...
  }@inputs:

  {
    # sudo darwin-rebuild switch --flake .#macbook-pro-arm
    darwinConfigurations.macbook-pro-arm = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";

      modules = [
        ./nixos/aarch64-darwin.nix
        nix-homebrew.darwinModules.nix-homebrew
        home-manager.darwinModules.home-manager
      ];

      specialArgs = { inherit homebrew-core homebrew-cask; };
    };

    # sudo darwin-rebuild switch --flake .#macbook-pro-intel
    darwinConfigurations.macbook-pro-intel = nix-darwin.lib.darwinSystem {
      system = "x86_64-darwin";

      modules = [
        ./nixos/x86_64-darwin.nix
        nix-homebrew.darwinModules.nix-homebrew
        home-manager.darwinModules.home-manager
      ];

      specialArgs = { inherit homebrew-core homebrew-cask; };
    };
  };
}
