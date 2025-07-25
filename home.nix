{ config, pkgs, ... }:

{
  # The state version should stay at the version you originally installed.
  home.stateVersion = "25.11";

  home.file = {
    ".config/starship.toml".source = ./.config/starship.toml;
    ".gitconfig".source = ./.gitconfig;
    ".tmux.conf".source = ./.config/tmux/tmux.conf;
    ".zshrc".source = ./.zshrc;

    ".config/ghostty".source = ./.config/ghostty;
    ".config/nvim".source = ./.config/nvim;
    ".config/tmuxinator".source = ./.config/tmuxinator;
    ".config/zed".source = ./.config/zed;
  };

  programs.zsh = {
    enable = true;

    sessionVariables = {
      EDITOR = "nvim";

      HOMEBREW_NO_ANALYTICS = "1";
    };

    # Not working for some reason
    shellAliases = {
      vim = "nvim";
      cat = "bat";
      grep = "rg";

      dot = "cd ~/.dotfiles";
      config = "vim ~/.zshrc";
      vimconf = "vim ~/.config/nvim/init.vim";

      home = "cd ~";
      docs = "cd ~/Documents";
      desk = "cd ~/Desktop";
      down = "cd ~/Downloads";
      dev = "cd ~/Documents/develop";

      st = "git status";
      fetch = "git fetch";
      log = "git log --show-signature --stat-width=100";
      logo = "git log --oneline";
    };
  };
}