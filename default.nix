# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{
  pkgs ? import <nixpkgs> { },
}:

{
  # The `lib`, `modules`, and `overlays` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  age-plugin-openpgp-card = pkgs.callPackage ./pkgs/age-plugin-openpgp-card { };
  thinkpad-uefi-sign = pkgs.callPackage ./pkgs/thinkpad-uefi-sign { };
  huawei-password-tool = pkgs.callPackage ./pkgs/huawei-password-tool { };
  oct-git = pkgs.callPackage ./pkgs/oct-git { };
}
