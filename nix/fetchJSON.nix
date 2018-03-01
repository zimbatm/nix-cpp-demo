{ fetchFromGitHub }:

# fetches the source described in the <package>.src.json

# path to the .src.json
path:

let
  data = builtins.fromJSON (builtins.readFile path);
in
  fetchFromGitHub { inherit (data) owner repo rev sha256; }
