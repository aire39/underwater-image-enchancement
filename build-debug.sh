#!/bin/bash

git submodule update --init

rm -rf build-debug
mkdir build-debug

chmod +x ./script/linux/build-sfml.sh
./script/linux/build-sfml.sh
chmod +x ./script/linux/build-imgui-sfml.sh
./script/linux/build-imgui-sfml.sh

cd build-debug

cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake --build .

cd ..
