# CppCon 2014: Herb Sutter "Back to the Basics! Essentials of Modern C++ Style"

Generically: What is the best C++ book to read today 2022?

A Tour of C++, Bjarne Stroustrup, 3rd edition 2022

[Slides](https://github.com/CppCon/CppCon2014/blob/master/Presentations/Back%20to%20the%20Basics!%20Essentials%20of%20Modern%20C%2B%2B%20Style/Back%20to%20the%20Basics!%20Essentials%20of%20Modern%20C%2B%2B%20Style%20-%20Herb%20Sutter%20-%20CppCon%202014.pdf)

## Loops

10:38

```c++
for (auto& e: c) {
    use(e);
}
for (e: c) {
    use(e);
}
```

## Smart pointers

- use lots of raw * and &, they're great. 10:38
- Don't Use Owning *, new, or delete
  - unique ptr is roughly free
  - use make_uniqe or make_shared
- 16:04 Non-Owning */& are Still Great!
- Polymorphisms works both for pointers and references, which should I prefer?
  - Use pointers if you need to express null values, otw always ref?
- 19:02 "Refcounted smart pointers are about managing the owned object's lifetime..."
- 22:11 Passing Smart Pointers slide.
- 27:33 How to "Do It Right"
  - Never pass smart pointers unless you actually want to manipulate the pointer
  - Express ownership using unique_ptr wherever possible
  - Use make_shared up front wherever possible.

```c++
void f(widget& w) {use(w);}
void f(widget* w) {use(w);}
```

## auto

31:01
deduce: `auto var = init;`

To make type stick, commit:
`auto var = type { init };`
or
`type var{ init };`

36:30: reasons to use auto:

- Using auto prevents ripple effect when changing types.
- Auto guarantees no conversion --> no temp objects --> performant

40:52: auto slide 18 on usage

```c++
auto x = 42.f;
auto x = 42ul;
```

47:45 slide 19 on the few cases where you can't use auto.

```c++
auto f() -> int{
  return 3;
}
```

## RValue references and parameter passing

Starts at 51:00

Slide 23/24. 58:34. **Print out slide 24 to cubicle wall**

-- 1:06:29
