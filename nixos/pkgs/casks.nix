{ config, pkgs, ... }:

{
  homebrew = {
    enable = true;

    casks = [
      "bitwarden"
      "brave-browser"
      "discord"
      "ghostty"
      "mullvad-vpn"
      "raycast"
      "signal"
      "visual-studio-code"
      "zed"
    ];
  };
}
