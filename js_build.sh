#!/usr/bin/env bash

git submodule update --init --recursive
# remove old build
rm -rf js_build
mkdir js_build
cd js_build
emmake cmake -DARCH= ../
emmake cmake --build . -- -j3
emcc ./js_build/libbls.a -o bls_signatures.js
