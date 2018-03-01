let
  spec = builtins.fromJSON (builtins.readFile ./default.src.json);
  fetchTarball = import ./fetchTarball-compat.nix;
  src = fetchTarball {
    url = "https://github.com/${spec.owner}/${spec.repo}/archive/${spec.rev}.tar.gz";
    sha256 = spec.sha256;
  };
in
  import src
