#!/bin/bash
set -euo pipefail
docker build -t thavlik/stylegan .
docker run \
    -d \
    --gpus all \
    --mount type=bind,source="$(pwd)",target=/stylegan \
    thavlik/stylegan \
    python train.py