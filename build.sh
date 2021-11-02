#!/bin/bash

rm -rf build/CMakeCache.txt

cmake -S . -B build -G Ninja \
-DCMAKE_BUILD_TYPE=Release \
-DIMGUI_WITH_IMPL=OFF

# -DIMGUI_WITH_IMPL=ON \
# -DIMGUI_IMPL_GLFW3_OPENGL3=ON

cmake --build build

# -DCMAKE_INSTALL_PREFIX="prebuilt"
# cmake --build build --target install
