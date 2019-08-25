#!/bin/bash
set -euo pipefail
docker build -t thavlik/stylegan .
docker run \
  -it \
  --mount type=bind,source=C:/Users/tlhavlik/Repositories/stylegan,target=/stylegan \
  -v C:/Users/tlhavlik/go/src/github.com/thavlik/azure-search/amalgam:/images \
  thavlik/stylegan