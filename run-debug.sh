#!/bin/bash

DIR="$(dirname -- "${BASH_SOURCE[0]}";)";
DIR="$(realpath -e -- "$DIR";)";

# build application
cd ${DIR}
echo "[run-debug.sh] building agent..."
bash ./build-debug.sh

# copy files
cd ${DIR}
echo "[run-debug.sh] running..."
sudo ./build/debug/agent