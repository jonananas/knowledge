# Why Go - by Carmen Andoh
https://www.youtube.com/watch?v=bmZNaUcwBt4
## Overall impression
Good presentation, with some really good pointers (like programming language genealogy). Not as good ending though, a better wrapup and conclusion that answers the questions would have been good.
I came away with the impression of many loose interesting ideas, but no clear answer to why.

## Details
Carmen's main answer to why as I interpret it is:
The language creators "is interested in simplicity" (11:45), when it comes to
- Concurrency
- Distributed systems
- Garbage collection
- Memory Locality
- Readability

My takeaway here is that Go seems great for concurrent programming, but I need to dwelve more into that topic to make up my mind. Comparing it to parallell java streams for example would be really interesting.

# Comparison
                      | Go                   | Java                  | Python
----------------------|----------------------|-----------------------|---------------------
Execution speed       | Fastest              | Fast                  | Slow
Concurrency           | goroutines           | green threads         | ???
Platform independence | Separate compilation | ** Run it using VM ** | Separate compilation
Error handling        | Explicit             | Exceptions            | Exceptions
Time to learn         |                      |                       |
OOP                   | No                   | Yes                   | Yes
Garbage collection    | Yes                  | Yes                   | No
Character encoding    | UTF-8                | UTF-16                | UTF-8 (Since 3.0)

# References
https://github.com/ksimka/go-is-not-good came from Carmen Andoh:s talk, and is a really neat list of things that if you run in to you can see whether others has run into it as well.

# Go tutorial
https://www.youtube.com/watch?v=YS4e4q9oBaU&list=PLOAyQrvuvDzAYO42BBFx2jfFM5AsQppKb&index=1&t=13s

## Key features (7:40)
- Simplicity
- Fast compile times - to enable fast code-build-test cycle.
- Garbage collected
- Built-in concurrency
- Compile to standalone binaries

## Setup
First entry is where downloads are located. Second is additional path to look for, ie your own code. 

    export GOPATH=$HOME/go:$HOME/go-projects

## Commands

    go run Main.go
    go build github.com/jonananas/firstapp # --> $GOPATH
    go install github.com/jonananas/firstapp # --> $GOPATH/bin
    go mod init github.com/jonananas/greetings # --> create module, ie go.mod file