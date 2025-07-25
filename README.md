# .dotfiles

## Nix

> Form some reason and I don't know if is a requirement but install ZSH before Nix

Install using Nix using [DeterminateSystems](https://github.com/DeterminateSystems/nix-installer), and run:

> Recommended vanilla upstream and select "no" when prompted to install Determinate Nix

```bash
curl -fsSL https://install.determinate.systems/nix | sh -s -- install
```

And in the fist run `darwin-rebuild` is not available so there is the option to:

```bash
sudo nix run nix-darwin -- switch --flake .#macbook-pro-intel
```

- [nix-darwin](https://github.com/nix-darwin/nix-darwin)
- [Nix on MacOS](https://nixcademy.com/posts/nix-on-macos)
- [Mitchell Hashimoto Nix Config 🗿](https://github.com/mitchellh/nixos-config)

### Darwin

#### AppleSymbolicHotKeys (keyboard shortcuts)

Kinda of a hard time figuring out this but now it works (except for services -> text -> convert to chinese bla bla)

- [Setting keyboard shortcuts in nix darwin](https://www.reddit.com/r/NixOS/comments/17n3tcn/setting_keyboard_shortcuts_in_nix_darwin)
- [Undocumented SymbolicHotKey extracted from CGSHotKeys.h](https://gist.github.com/mkhl/455002#file-ctrl-f1-c-L12)
- [nix darwin - Keyboard shortcuts update](https://github.com/nix-darwin/nix-darwin/pull/699/files)

#### Docker

`virtualisation.docker.enable = true;` is not available on MacOs, so the best approach is use [Colima](https://github.com/abiosoft/colima)
(discussed on this [thread](https://github.com/NixOS/nixpkgs/issues/47201#issuecomment-2041162985))

**NOTE:** If for some weird reason there is an error trying to pull images from the official Docker repository (discussed [here](https://stackoverflow.com/questions/65896681/exec-docker-credential-desktop-exe-executable-file-not-found-in-path)):

```bash
exec: "docker-credential-desktop.exe": executable file not found in $PATH
```

just delete `credsStore` from `~/.docker/config.json`

#### Home Manager

- [declarative macos management with nix-darwin and home-manager](https://carlosvaz.com/posts/declarative-macos-management-with-nix-darwin-and-home-manager)

## SOPS

- Install [Mozilla SOPS](https://github.com/getsops/sops) and [AGE](https://github.com/FiloSottile/age)

```bash
# Encrypt
sops -e secrets/.secretsrc > secrets/.secretsrc-enc

# Decrypt
sops -d secrets/.secretsrc-enc > secrets/.secretsrc
```

## TMUX

```bash
tmux list-sessions
```

```bash
tmux kill-server
```

- [TMUX Ghostty - Mansoor Barri](https://mansoorbarri.com/tmux-ghostty)
- [Reddit - Perfect Ghostty TMUX Config](https://www.reddit.com/r/Ghostty/comments/1hoi3id/my_perfect_ghostty_tmux_nvim_configuration_on)
    - [Gist Ghostty Config](https://gist.github.com/oca159/5124a22012b1887bbf2b6e2cc1f9e574)
    - [Gist TMUX Config](https://gist.github.com/oca159/69f7aab040d3f462cc26accabbd4ea67)