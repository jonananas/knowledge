# Binary serialization, ie Protobuf, flatbuffers

- [FBE with comparison chart](https://chronoxor.github.io/FastBinaryEncoding/)
  - Fast, small, but not as mature as below. Ie no apt-get, brew install, etc.
- [Comparison from flatbuffers](https://google.github.io/flatbuffers/flatbuffers_benchmarks.html)
- [paper comparing different buffers](https://www.ida.liu.se/~nikca89/papers/networking20c.pdf)
  - Protobuf is shown to have faster serialization speed and three times smaller serialized message
  - size than Flatbuffers. In contrast, Flatbuffers uses less memory and has shorter deserialization time
- [Protobuf message compatibility](https://earthly.dev/blog/backward-and-forward-compatibility/)

## Usability in Python

- Using Protobuf generates compact and intuitive code. But IntelliSense is not enabled in VSCode.
- Using flatbuffers generates a lot (2-3 times) more code. IntelliSense is enabled out of the box.

## Flatbuffers

### OSX install

```bash
brew install flatbuffers
rehash
flatc --python schema.fbs
```

### Ubuntu install

```bash
sudo apt install -y flatbuffers-compiler
```

## Protobuf

### Protobuf OSX install/usage

```bash
brew install protobuf
rehash
protoc -I=. --python_out=. adressbook.proto
```
