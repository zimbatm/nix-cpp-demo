# This is our entry-point for nix. Use `nix-shell` to load all the package
# build dependencies and entrer the development environment.
let
  pkgs = import ./nix {};
in
  # see nix/nix-cpp-demo.nix
  pkgs.nix-cpp-demo
