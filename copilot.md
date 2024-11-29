# Copilot

## Commands
```bash
# To clear chat window:
comment: //clear
```

## Copilot in CLion

Visa bara att det funkar, kör sen VSCode

## Copilot in vscode

## Examples

- Help with completion.
- Help with refactoring
  - Cmd-I on selected code, then "create functional alternative"
  - Refactor out methods?
- Help with boring tasks
  - Exempel!
- Help with pylint
  - Given a python file with pylint errors
  - Adds "Fix using copilot" to Quick-Fix, sometimes :)
  - Offers completion of pylint disable, e.g:
    - `def buildScene(): # pylint: disable=invalid-name`
- Help with Catch2
  - Vec3 matcher, given three x,y,z comparisons.
  - Create a catch2 matcher


## Other features

TDD med copilot?


## Detailed examples

1. Github CoPilot vs Microsoft CoPilot
2. VSCode Plugin

Repitive tasks, like SPDLOG_INFO in buildScene of AGXBrick.cpp?
Boiler plate
Ibland dålig, ofta bra

### Python

```
main:
  <tab>
use shebang
add module description
# parse name from cmdline
# create a list of all numbers between 1 and 10
# sum all numbers on the list
# filter out all even numbers
```

Now Add file to chat, and
```
move parse_arguments to separate module kasta_parser.py
```

Suggestions?

TODO: Something more advanced! Retrieve html from algoryx.com?

**Possibly: Demo using requests to fetch info from Gitlab API**


### C++

TestAnnotations.cpp, brick.eval-tests:

1. Same as above: add new scenario, given "a list from 1 to 10", then "filter even numbers"
2. extract to method create_numbers
3. extract to method filter_even_numbers
4. use initializer (on create_numbers)
2. Boring repetitive task - example? <<< TODO!!! >>>
  SPDLOG_INFO in buildScene of AGXBrick.cpp
  case-switch i brick.core ErrorFormatter
4. Extract method, BrickToAgxMapper.cpp:1754
3. Catch2 example?
  TestClickOutputListener.cpp

4. Suggestions?



5. New project
  - Create folder /tmp/kasta, open code there
  - create cmakelists.txt
  - create hello world main.cpp
  - warn if on osx
  - git init
  - add spdlog as dependency using conan
    - run conan from oos directory!
    -
      - conanbuildinfo.cmake --> conan_toolchain.cmake
      - now i get fatal error: 'iostream' file not found
      - /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
      - Add target_include_directories(MyExecutable PRIVATE ${CMAKE_INCLUDE_PATH})
            target_link_directories(MyExecutable PRIVATE ${CMAKE_LIBRARY_PATH})



### VSCode Settings

suggests based on previous line
"black-formatter.args": ["--line-length", "150"],
Then change to 160 --> changes to 160
