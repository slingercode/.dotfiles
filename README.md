# .dotfiles

## Nix

Install using Nix using [DeterminateSystems](https://github.com/DeterminateSystems/nix-installer), and run:

```bash
# Recommended vanilla upstream and select "no" when prompted to install Determinate Nix.
curl -fsSL https://install.determinate.systems/nix | sh -s -- install
```

- [nix-darwin](https://github.com/nix-darwin/nix-darwin)
- [Nix on MacOS](https://nixcademy.com/posts/nix-on-macos)

## SOPS

- Install [Mozilla SOPS](https://github.com/getsops/sops) and [AGE](https://github.com/FiloSottile/age)

```bash
# Encrypt
sops -e secrets/.secretsrc > secrets/.secretsrc-enc

# Decrypt
sops -d secrets/.secretsrc-enc > secrets/.secretsrc
```
