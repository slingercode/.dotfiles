{ config, pkgs, ... }:

{
  homebrew = {
    enable = true;

    casks = [
      "brave-browser"
      "ghostty"
      "mullvad-vpn"
      "raycast"
      "signal"
      "visual-studio-code"
      "zed"
    ];
  };
}
