{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bun
    cmake
    flyctl
    fnm
    go
    libllvm
    pnpm
    zig
  ];
}
