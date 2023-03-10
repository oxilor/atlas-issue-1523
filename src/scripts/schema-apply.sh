#!/bin/sh

source src/scripts/config.sh

docker run --rm --net=host -it -v "${SCHEMA_PATH}":/schema arigaio/atlas schema apply \
  --url $POSTGRES_URL \
  --dev-url $POSTGRES_DEV_URL \
  --to file://schema
