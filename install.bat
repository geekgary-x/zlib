@echo off

setlocal

rem 设置生成目录
set BUILD_DIR=build

rem 创建生成目录
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

rem 进入生成目录
cd %BUILD_DIR%

rem 使用 CMake 生成 VS 项目文件
cmake -G "Visual Studio 17 2022" .. -DCMAKE_INSTALL_PREFIX:PATH=Z:/Program Files/zlib

rem 运行编译
cmake --build . --target install --config Release
cmake --build . --target install --config Debug

endlocal
