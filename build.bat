del /S /Q build

cmake -S . -B build -G Ninja ^
-DCMAKE_BUILD_TYPE=Release ^
-DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE ^
-DIMGUI_WITH_IMPL=ON ^
-DIMGUI_IMPL_GLFW3_OPENGL3=ON ^
-DCMAKE_INSTALL_PREFIX=".\prebuilt"

cmake --build build

cmake --build build --target install
