# Effective cmake

DOne till 24:15

<https://www.youtube.com/watch?v=bsXLMQ6WgIk>


Find<package>.cmake

## Questions

- Are there no plugin system?
- What's up with the Bar::Bar? at 27:57
- How generate CPackConfig.cmake? at 48:56
- CPACK_INSTALL_CMAKE_PROJECTS 46:35
- subprojects vs Conan Fetch.

## Notes

- Complex, feature rich, multi paradigm toolset
- Cmake is a build system generator
- CPack is a packaging tool distributed with CMake <https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/Configuration>

## Recommendations

- CMake is code - use same principles for CMakeLists.txt and modules as for code
- Do not use Variables - use Targets and Properties
- Do not use file(GLOB) in projects

## Guidelines/Tips

- When you export Foo in namespace Foo::, also create an alias Foo::Foo 52:27

```c++
add_library(Foo:Foo ALIAS Foo)
```

- When having subprojects that should not be exported use tip at 54:02

## Organization

- Directories
- Scripts
- Modules

## Multi-line comments 7:16

```cmake
#[==[
comments
#]==]
```

## Generator expressions 7:43

## Commands

function() 9:17
macro() 10:35

Create macros to wrap commands that have output parameters, **Otherwise create a function**
Deprecating 12:30

## target_compile_features 20:33

## Public, private, interface 23:03

- Private populates non-INTERFACE = that is build specifications of target
- Interface populates INTERFACE_ = usage specs of target
- Public populates both

## How library creators should support cmake clients

38:00

## CPack 45

Create subdirectories release and debug:
project
    release
    debug

 cmake install into each, and package them together with temporary project/CPackConfig.cmake

```c++
include("release/CPackConfig.cmake")
set(CPACK_INSTALL_CMAKE_PROJECTS
    "debug;clicklib;ALL;/"
    "release;clicklib;ALL;/")
```

## CTest 58:25

`ctest -S build.cmake`
build.cmake is project agnostic, ie not stored per project.

## Treat Warnings as Errors 1:05:41

Use

- clang-tidy
  - set(CMAKE_CXX_CLANG_TIDY clang-tidy -checks=-*,readability-*)
- cpplint
- include-what-you-use
- clazy
