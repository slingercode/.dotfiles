# .dotfiles

## SOPS

- Install [Mozilla SOPS](https://github.com/getsops/sops) and [AGE](https://github.com/FiloSottile/age)

```bash
# Encrypt
sops -e secrets/.secretsrc > secrets/.secretsrc-enc

# Decrypt
sops -d secrets/.secretsrc-enc > secrets/.secretsrc
```
