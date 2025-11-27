let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShell {
  packages = with pkgs; [
    cowsay
    cmatrix
    zsh
    bash
    clang
    gcc
    nim
    tcsh
    python3
  ];
}   
