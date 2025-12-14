#!/bin/bash

git submodule update --init

rm -rf build-release
mkdir build-release

chmod +x ./script/linux/build-sfml.sh
./script/linux/build-sfml.sh
chmod +x ./script/linux/build-imgui-sfml.sh
./script/linux/build-imgui-sfml.sh

cd build-debug

cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

cd ..
