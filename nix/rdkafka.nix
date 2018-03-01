# In this package we keep the package definition from upstream and just
# replace the src attribute to use the (pinned) master branch on github.
{ rdkafka, lib, fetchJSON }:
lib.overrideDerivation rdkafka (oldAttrs: {
  name = "rdkafka-master";
  src = fetchJSON ./rdkafka.src.json;
})
