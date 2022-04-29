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

    git clone https://github.com/gregmalcolm/python_koans.git
    cd python_koans
    while true; do; fswatch -o . | ./run.sh; done
    To stop:
    Ctrl-z
    kill %1

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

### Virtual environments

Can be put anywhere, ie ~/venv/myenv

    # Create
    python3 -m venv ~/venv/myenv
    # activate
    source ~/venv/myenv/bin/activate
    # deactivate

### Paths and vscode

- VSCode will use your opened root folder as workspace, meaning it won't find your python modules.
- One easy fix is adding ```"python.autoComplete.extraPaths": ["./path-to-your-code"],``` to ```.vscode/settings.json```. From [stackoverflow](https://stackoverflow.com/questions/53939751/pylint-unresolved-import-error-in-visual-studio-code).
- Then do Cmd-P ```> reload window```
- An alternative is PYTHONPATH in .env, but it uses different os,pathsep on Windows and Mac/linux. [Ref](https://code.visualstudio.com/docs/python/environments#_use-of-the-pythonpath-variable)

### Asyncio

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
