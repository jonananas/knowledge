# Python

- dataclass
- property
- type hints
- [TypeVar](https://docs.python.org/3/library/typing.html#typing.TypeVar)
- typing.NewType

## Python for Java programmers

http://python4java.necaiseweb.org/

## Python koans

<https://github.com/gregmalcolm/python_koans>
Make sure you have python installed, below is for python2
Open contemplate_koans.py in your favorite editor and run it, or use run.sh

```bash
    git clone https://github.com/gregmalcolm/python_koans.git
    cd python_koans
    while true; do; fswatch -o . | ./run.sh; done
    To stop:
    Ctrl-z
    kill %1
```

## What the f*ck python

Exploring and understanding Python through surprising snippets.

https://github.com/satwikkansal/wtfpython/blob/master/README.md

## Import system

- __init__.py makes that directory a module
- PYTHONPATH needs to point to parent directory of modules in that project - no automatic solution found (yet)

[Detailed overview of how the python import system works](https://tenthousandmeters.com/blog/python-behind-the-scenes-11-how-the-python-import-system-works/)
[Import traps](https://python-notes.curiousefficiency.org/en/latest/python_concepts/import_traps.html)

## Tools

- pycodestyle <files> to lint, available also in vscode
- dark???

## Isolating environments and dependencies

- pip
- virtualenv
- [poetry](https://python-poetry.org/)
  - specifies all dependencies in pyproject.toml instead of setup.py + requirements.txt
  - provides isolation, e.g. no need for virtualenvs
  - adds cli for starting project, adding dependencies, etc.

## poetry

See [Poetry](poetry.md)

- pip3 install from git still work with pyproject.toml
- pip3 install -e . still work with pyproject.toml for pip >= 21.3

Replaces

- setuptools
- twine
- setup.py
- requirements.txt

```bash
# install dependencies in isolation
poetry install
# Step into isolated shell
poetry shell
# Run tests
poetry run pytest
# Build
poetry build
```

## PIP

### Clean install 3.9

```bash
➜ pip3.9 list
Package    Version
---------- -------
pip        24.3.1
setuptools 75.6.0
wheel      0.45.1
```

## Upgrading pip on Ubuntu

```bash
apt-get install -y python3-pip
python3 -m pip install --upgrade pip
hash -r
```

Full test:

```bash
docker run -ti ubuntu:20.04 bash
apt-get update
# will install python3 as well
apt-get install -y python3-pip
# upgrade pip
python3 -m pip install --upgrade pip
# rehash
hash -r
pip3 --version
```

### Typical deps

pip3 install virtualenv

### Typical cmds

```bash
# Show installed packages including paths
pip3 list -v
# Details including path to installed package
pip3 show <pkg>, pip3 show virtualenv
```

### Pip and Python-specific versions with HomeBrew (OSX)

Unfortunately `brew link python3@9` does not work (`brew link python@3.11` does).
In order to have python3.9 or whatever version as python3, do:

```bash
rm pip3 pydoc3 python3 python3-config wheel3
 ln -s ../Cellar/python@3.9/3.9.12/bin/python3.9 python3
 ln -s ../Cellar/python@3.9/3.9.12/bin/pip3.9 pip3
 ln -s ../Cellar/python@3.9/3.9.12/bin/pydoc3.9 pydoc3
 ln -s ../Cellar/python@3.9/3.9.12/bin/python3.9-config python3-config
 ln -s ../Cellar/python@3.9/3.9.12/bin/wheel3.9 wheel3
```

## Virtual environments

Prefer [Poetry](poetry.md)!
Can be put anywhere, ie ~/venv/myenv

```bash
    # Create
    python3 -m venv ~/venv/myenv
    # activate
    source ~/venv/myenv/bin/activate
    # deactivate
```

## Paths and vscode

- VSCode will use your opened root folder as workspace, meaning it won't find your python modules.
- One easy fix is adding ```"python.autoComplete.extraPaths": ["./path-to-your-code"],``` to ```.vscode/settings.json```. From [stackoverflow](https://stackoverflow.com/questions/53939751/pylint-unresolved-import-error-in-visual-studio-code).
- Then do Cmd-P ```> reload window```
- An alternative is PYTHONPATH in .env, but it uses different os,pathsep on Windows and Mac/linux. [Ref](https://code.visualstudio.com/docs/python/environments#_use-of-the-pythonpath-variable)

## Asyncio

- Excellent introduction: https://realpython.com/async-io-python/#the-10000-foot-view-of-async-io

### Snippets

```python
print(dir(whatever))
print(help(whatever))
```

### GTK OSX

```bash
brew install gtk+3
pip3 install pygobject
```

### Library tips

- [Beautiful Terminal Styling in Python With Rich](https://www.youtube.com/watch?v=4zbehnz-8QU&t=745s)

### Memoization

From <https://docs.python.org/3/library/functools.html#functools.cache>:

```python
@cache
def factorial(n):
    return n * factorial(n-1) if n else 1

>>> factorial(10)      # no previously cached result, makes 11 recursive calls
3628800
>>> factorial(5)       # just looks up cached value result
120
>>> factorial(12)      # makes two new recursive calls, the other 10 are cached
479001600
```

## Using C++ libraries

### OSX

Library needs to be MODULE, ie have extension .so. You can rename .dylib to .so as a shortcut.
set PYTHONPATH to directory of .so file, then just import it.

Example for mylib.so:

```bash
export PYTHONPATH=$PWD/lib
python3
import mylib
```

## Wheels

Use `pip3 debug` to see which tags are supported.
On Linux `auditwheel show file.whl` can be used to inspect a wheel. <https://pypi.org/project/auditwheel/1.0.0/>
Manylinux can be used to build as compatible as possible wheels.


## Libraries

- pydantic, define data objects and validate them, store to json, read from json, show json schema, etc
- logfire, observability platform
