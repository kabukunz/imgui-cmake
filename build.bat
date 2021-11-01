del /S /Q build

cmake -S . -B build -G Ninja ^
-DCMAKE_BUILD_TYPE=Release ^
-DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE ^
-DIMGUI_WITH_IMPL=OFF

cmake --build build
