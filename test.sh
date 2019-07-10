#!/usr/bin/env bash

export MSYS_NO_PATHCONV=1

cd $(dirname $0)
docker run -i --rm \
  -v $(pwd):/code \
  bats/bats:latest \
  /code