{
  description = "Nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, darwin }@inputs: {
    # sudo darwin-rebuild switch --flake .#macbook-pro-arm
    darwinConfigurations.macbook-pro-arm = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [ ./nixos/aarch64-darwin.nix ];
    };

    # sudo darwin-rebuild switch --flake .#macbook-pro-intel
    darwinConfigurations.macbook-pro-intel = darwin.lib.darwinSystem {
      system = "x86_64-darwin";
      modules = [ ./nixos/x86_64-darwin.nix ];
    };
  };
}
