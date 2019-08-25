#!/bin/bash
set -euo pipefail
docker build -t thavlik/stylegan .
docker run \
    -d \
    --mount type=bind,source="$(pwd)",target=/stylegan \
    thavlik/stylegan
