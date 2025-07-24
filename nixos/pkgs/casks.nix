{ config, pkgs, ... }:

{
  environment.variables.HOMEBREW_NO_ANALYTICS = "1";

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
