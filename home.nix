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

    ".sops/README.md".text = ''
      # SOPS AGE KEY DIRECTORY

      PASTE THE `age.key` FILE IN THIS FOLDER
    '';

    ".ssh/github_ed25519.pub".text = ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF2m+xPVTJtkSKxrjdFT10XSCfUvpOf3QLH0toekBA0j github@ednoesco.com
    '';

    ".ssh/raspberry_ed25519.pub".text = ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILDJvmPVicrwUH398uuMpzLtwuzGpz5pBxsWWXiIGw/P raspberry
    '';
  };

  programs.zsh = {
    enable = true;

    sessionVariables = {
      EDITOR = "nvim";

      HOMEBREW_NO_ANALYTICS = "1";

      SOPS_AGE_KEY_FILE="~/.sops/age.key";
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

  sops = {
    defaultSopsFile = ./secrets/secrets.yaml;
    age.keyFile = "${config.home.homeDirectory}/.sops/age.key";

    secrets."ssh/github" = {
      path = "${config.home.homeDirectory}/.ssh/github_ed25519";
    };

    secrets."ssh/raspberry" = {
      path = "${config.home.homeDirectory}/.ssh/raspberry_ed25519";
    };
  };

  programs.ssh = {
    enable = true;

    extraConfig = ''
      Host github.com
        IdentityFile ~/.ssh/github_ed25519
        IdentitiesOnly yes

      Host raspberrypi
        User ednoesco
        HostName raspberrypi
        IdentityFile ~/.ssh/raspberry_ed25519

      Host 192.168.8.222
        User ednoesco
        HostName 192.168.8.222
        IdentityFile ~/.ssh/raspberry_ed25519
    '';
  };

  programs.gpg = {
    enable = true;

    publicKeys = [
      {
        source = ./gpg/github-public.key; 
      }
    ];
  };
}