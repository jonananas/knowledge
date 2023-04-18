# Real-Time programming with the C++ standard library

Timur Doumler CppCon 2021

- "real-time"
  - minimize latency, or rather keep maximum exec time
  - code cannot fail
  - don't block
  - don't allocate/deallocate memory
  - don't do any I/O
  - don't do system calls
  - don't call 3rd party code
- "freestanding C++"
  - "Bare metal c++"
  - overlap, but not exactly same thing. 11:40
- Goal: **what parts of stl is "realtime safe"**
  - Hints: 14:09
  - Exceptions are not "real-time safe"
    - does not have statically boundable space and time costs
    - platform differences 18:39
  - STL algorithms
    - almost all of them are safe, not 21:54
  - STL containers
    - std::array is safe, no others, 23:00 has workaround - not on windows
    - custom allocators - made to make allocations faster - but not constant time. 24:06
    - std::pmr::monotonic_buffer_resource 25:09
    - std::pmr::unsynchronized_pool_resource 27:50
    - static_vector 29:30
      - talk for roll your own
      - P0843 standard proposition
  - utilities
    - pair, optional, variant - all on the stack. 30:49
    - variant depends!
    - type erasure is not "real-time safe"; std::any, std::function 33:50
  - Lamdas
    - safe - allocated on stack, cannot be passed as function. - Who can elaborate?
  - generators are not safe - 36:10, 36:30
  - Synchronizations
    - Not real-time safe. 39:07
  - Atomic
    - safe!
    - 40:12
  - Random generators 42:20
    - std::rand is useless
      - bad quality
      - not portable
      - impl-defined whether introduces data races 43:54
    - 3 others: 44:05
    - xorshift is probably the best - not part of stl 46:00

## Discuss Plan

- Introductory thoughts?
- Go through stuff
- Last 15 - what can we use this for?
- Any need/use in AGX?
