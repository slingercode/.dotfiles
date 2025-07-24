# .dotfiles

## Nix

Install using Nix using [DeterminateSystems](https://github.com/DeterminateSystems/nix-installer), and run:

```bash
# Recommended vanilla upstream and select "no" when prompted to install Determinate Nix.
curl -fsSL https://install.determinate.systems/nix | sh -s -- install
```

- [nix-darwin](https://github.com/nix-darwin/nix-darwin)
- [Nix on MacOS](https://nixcademy.com/posts/nix-on-macos)
- [Mitchell Hashimoto Nix Config 🗿](https://github.com/mitchellh/nixos-config)

### Darwin

#### Docker

`virtualisation.docker.enable = true;` is not available on MacOs, so the best approach is use [Colima](https://github.com/abiosoft/colima)
(discussed on this [thread](https://github.com/NixOS/nixpkgs/issues/47201#issuecomment-2041162985))

**NOTE:** If for some weird reason there is an error trying to pull images from the official Docker repository (discussed [here](https://stackoverflow.com/questions/65896681/exec-docker-credential-desktop-exe-executable-file-not-found-in-path)):

```bash
exec: "docker-credential-desktop.exe": executable file not found in $PATH
```

just delete `credsStore` from `~/.docker/config.json`

## SOPS

- Install [Mozilla SOPS](https://github.com/getsops/sops) and [AGE](https://github.com/FiloSottile/age)

```bash
# Encrypt
sops -e secrets/.secretsrc > secrets/.secretsrc-enc

# Decrypt
sops -d secrets/.secretsrc-enc > secrets/.secretsrc
```
