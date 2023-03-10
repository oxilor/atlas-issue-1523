#!/bin/sh

source src/scripts/config.sh

docker run --rm --net=host -it -v "${SCHEMA_PATH}":/schema arigaio/atlas migrate hash \
  --dir file://schema
