{ nixpkgs ? import ./nixpkgs }:

# define our own package set on top of nixpkgs
let overlay = self: pkgs: with pkgs; {

  # helper function
  fetchJSON = import ./fetchJSON.nix { inherit (pkgs) fetchFromGitHub; };

  # override the default rdkafka
  rdkafka = callPackage ./rdkafka.nix { inherit (pkgs) rdkafka; };

  # define this new package
  cppkafka = callPackage ./cppkafka.nix {};

  # our main package
  nix-cpp-demo = callPackage ./nix-cpp-demo.nix {};
}; in
# plug everything together for reproducible builds
nixpkgs {
  config = {};
  overlays = [overlay];
}
