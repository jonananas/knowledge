
# C++ universe

## C++ Core Guidelines

By Stroustrup and Sutter

https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#main

## Conan

Conan is great!

### Errors

When below happens it might be hard to spot that `new settings.yml has been stored in: /Users/jonas/.conan/settings.yml.new`
Simply copy it into settings.yml and try again.

```bash
-- Conan: checking conan executable
-- Conan: Found program /usr/local/bin/conan
-- Conan: Version found WARN: Migration: Updating settings.yml
WARN: ****************************************
WARN: settings.yml is locally modified, can't be updated
WARN: The new settings.yml has been stored in: /Users/jonas/.conan/settings.yml.new
WARN: ****************************************
Conan version 1.46.2
-- Conan executing: /usr/local/bin/conan install . --build missing --settings build_type=Release --settings compiler=apple-clang --settings compiler.version=13.1 --settings compiler.libcxx=libc++
ERROR: Invalid setting '13.1' is not a valid 'settings.compiler.version' value.
Possible values are ['5.0', '5.1', '6.0', '6.1', '7.0', '7.3', '8.0', '8.1', '9.0', '9.1', '10.0', '11.0', '12.0', '13.0']
Read "http://docs.conan.io/en/latest/faq/troubleshooting.html#error-invalid-setting"
CMake Error at /Users/jonas/projects/click/build/conan.cmake:651 (message):
  Conan install failed='1'
Call Stack (most recent call first):
  CMakeModules/conanconf.cmake:47 (conan_cmake_install)
  CMakeLists.txt:19 (include)
```
