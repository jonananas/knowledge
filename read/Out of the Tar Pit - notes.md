# Out of the Tar Pit - notes

## Thoughts

- might not Informal Resoning be overwhelming? Requires good abstractions?
- testing vs informal reasoning seems to me like the battle between arv och miljö, they both are nessecary tools. Why bother discussing which is best when they should be used together?
- Do we accept that simplicity is always the most important thing?
  - and also that the best metric of complexity is LOC? IE all other (known) metrics correlate with LOC.
- Does not seem to be up to speed on testing practices like testing pyramid, where abstractions are used also in testing.
- Ok, so bad state is bad, but that's not new is it?
- I do not agree with the def of OOP, in my (DDD) opinion
  - identity is not object identity, consider Entity, VO:s and Domain 
  - immutability should be favored

## Notes

- Simplicity is Hard
  - type of complexity ... is that which makes large systems hard to understand

Understanding by
- testing
- Informal reasoning

Complexity causes

- state, but mostly **mutable state** pp16
  - Avoid hiding hidden, implicit, mutable state
- overspecification

"the amount of intellectual e↵ort needed grows with the square of program length", Dijsktra pp11

### Principles

- Complexity breeds complexity - example: duplication
- Simlicity is Hard
- Power corrupts, ie power of manual memory mgmt is removed by garbage collection

### Definitions

*Essential Complexity* is inherent in, and the essence of, the problem (as seen by the users)
*Accidental Complexity* is all the rest, stuff that we would not have to deal with in the ideal world.
"if there is any possible way that the team could produce a system that the users will consider correct without having to be concerned with a given type of complexity then that complexity is not essential." pp 22

### What to do

- Avoid all complexity
- Separate out all complexity of any kind from the pure logic of the system, ie DDD.

## FRP - Functional Relational Programming

- In contrast with OOP, FRP emphasizes a clear separation of state and behaviour. pp 43
- FRP stroncly encourages that data be treated as essential state only when it has been input directly by a user (system/human/...).
- Jmf: Integrity constraints vs Invariants.
- Test implemented in Scheme. pp, 49 footnote.

Inage pp 43

- Essential State - a relational definition of stateful componentws
- Essential Logic - Derived-relation definition, integrity constraints and (pure) functions
- Accidental State and Control - A declarative spec of a set of performance optimizations for the system
- Other - A spec of the required interfaces to the outside world (user and system interfaces)

Corresponds to:

- State
- Behaviour
- Performance
- ???

### FRP Example

pp 54.

- Address is not a string
- price is most definitely not a double - basic misdesign. It is a domain primitive, can be an int representing for example 1/100SEK, ie "ören".

Can FRP be used as a DSL within DDD?
