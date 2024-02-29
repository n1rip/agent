#!/bin/bash

DIR="$(dirname -- "${BASH_SOURCE[0]}";)";
DIR="$(realpath -e -- "$DIR";)";

# build application
cd ${DIR}
echo "[run-release.sh] building agent..."
bash ./build-release.sh

# copy files
cd ${DIR}
echo "[run-release.sh] running..."
sudo ./build/release/agent