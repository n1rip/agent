#!/bin/bash

if [ -d "build/release" ]; then
  rm -rf "build/release"
fi

mkdir -p build/release
make release
cp ./agent ./build/tmp
make clean
mv ./build/tmp ./build/release/agent