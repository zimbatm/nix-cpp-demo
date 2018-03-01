{ stdenv, lib
, boost16x
, cmake
, cppkafka
, libpqxx
, ocamlPackages
, protobuf
, rdkafka
}:

stdenv.mkDerivation {
  name = "nix-cpp-demo";
  src = lib.cleanSource ../src;
  nativeBuildInputs = [ cmake ];
  buildInputs = [
    boost16x
    cppkafka
    libpqxx
    ocamlPackages.piqi
    protobuf # TODO: 2.6 is not available, only 2.5, 3.1 and 3.5
    rdkafka
  ];
}
