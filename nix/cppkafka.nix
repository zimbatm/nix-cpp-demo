# A standard cmake-based build
{ stdenv, fetchJSON, cmake, boost, rdkafka }:
stdenv.mkDerivation {
  name = "cppkafka-master";
  src = fetchJSON ./cppkafka.src.json;
  nativeBuildInputs = [ cmake ];
  buildInputs = [
    boost
    rdkafka
  ];
}
