# CMake

CMake is the buildtool

## Starting points

- [Modern cmake - your first project](https://cliutils.gitlab.io/modern-cmake/chapters/basics.html)
- [gRPC and Protobuf support in CMake](https://www.f-ax.de/dev/2020/11/08/grpc-plugin-cmake-support.html)


## Multiconfig builds These are equivalent
```bash
    - cmake -D CMAKE_INSTALL_PREFIX=./build/install -DCMAKE_GENERATOR="Ninja Multi-Config" -DCPACK_GENERATOR=DEB $EXTRA_PARAMS -B build cpp-src
    - cmake --build build --config Release
    - cmake --install build --config Release
    - cpack -C Release --config build/CPackConfig.cmake   
```

and

```bash
    - mkdir build
    - cd build
    - cmake -D CMAKE_INSTALL_PREFIX=./build/install -DCMAKE_GENERATOR="Ninja Multi-Config" -DCPACK_GENERATOR=DEB $EXTRA_PARAMS . ../cpp-src
    - ninja -f build-Release.ninja
    - ninja install -f build-Release.ninja
    - ninja package -f build-Release.ninja
```

## Debug/Trace cmake

```bash
cmake . --trace-source=FindagxROS2.cmake --trace-expand
```

## Print out all variables in cmake script

From <https://stackoverflow.com/questions/9298278/cmake-print-out-all-accessible-variables-in-a-script>

```bash
get_cmake_property(_variableNames VARIABLES)
list (SORT _variableNames)
foreach (_variableName ${_variableNames})
    message(STATUS "${_variableName}=${${_variableName}}")
endforeach()
```
