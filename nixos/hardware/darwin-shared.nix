{ config, pkgs, homebrew-core, homebrew-cask, sops-nix, ... }:

{
  imports = [
    ../pkgs/casks.nix
    ../pkgs/system.nix
    ../pkgs/programming.nix
    ../pkgs/docker-darwin.nix
  ];

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Indicates that we use proprietary software
  nixpkgs.config.allowUnfree = true;

  # Enable alternative shell support in nix-darwin.
  # programs.fish.enable = true;
  programs.zsh.enable = true;  # default shell on catalina

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # Required for some settings like homebrew to know what user to apply to.
  system.primaryUser = "ednoesco";

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    sharedModules = [ sops-nix.homeManagerModules.sops ];
    
    users.ednoesco = import ../../home.nix;
  };

  # Symbolic hotkeys
  #
  # Check readme for symbolic code documentation
  system.defaults.CustomUserPreferences = {
    "com.apple.symbolichotkeys" = {
      AppleSymbolicHotKeys = {
        "50".enabled = false; # kCGSHotKeyToggleCharacterPallette
        "52".enabled = false; # kCGSHotKeyToggleDockAutohide
        "60".enabled = false; # kCGSHotKeySelectPreviousInputSource
        "61".enabled = false; # kCGSHotKeySelectNextInputSource
        "64".enabled = false; # kCGSHotKeySpotlightSearchField
        "65".enabled = false; # kCGSHotKeySpotlightWindow
      };
    };
  };

  # Dock configuration
  system.defaults.dock = {
    autohide = true;

    minimize-to-application = false;
    
    show-recents = false;
    
    persistent-apps = [
      "/Applications/Brave\ Browser.app"
      "/Applications/Ghostty.app"
      "/Applications/Visual\ Studio\ Code.app"
      "/Applications/Discord.app"
      "/System/Applications/Music.app"
      "/System/Applications/System\ Settings.app/"
    ];
  };

  # The user should already exist, but we need to set this up so Nix knows
  # what our home directory is (https://github.com/LnL7/nix-darwin/issues/423).
  users.users.ednoesco = {
    home = "/Users/ednoesco";
    description = "Main user";
  };

  nix-homebrew = {
    # Install Homebrew under the default prefix
    enable = true;

    # User owning the Homebrew prefix
    user = "ednoesco";

    # Optional: Declarative tap management
    taps = {
      "homebrew/homebrew-core" = homebrew-core;
      "homebrew/homebrew-cask" = homebrew-cask;
    };

    # Optional: Enable fully-declarative tap management
    #
    # With mutableTaps disabled, taps can no longer be added imperatively with `brew tap`.
    mutableTaps = false;
  };
}
