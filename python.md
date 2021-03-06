# Python
## Python for Java programmers

http://python4java.necaiseweb.org/

## Python koans

https://github.com/gregmalcolm/python_koans
Make sure you have python installed, below is for python2
Open contemplate_koans.py in your favorite editor and run it, or use run.sh

    git clone https://github.com/gregmalcolm/python_koans.git
    cd python_koans/python2
    ./run.sh

## What the f*ck python

Exploring and understanding Python through surprising snippets.

https://github.com/satwikkansal/wtfpython/blob/master/README.md

## Import system

- __init__.py makes that directory a module
- PYTHONPATH needs to point to parent directory of modules in that project - no automatic solution found (yet)

[Import traps](https://python-notes.curiousefficiency.org/en/latest/python_concepts/import_traps.html)

## Tools

- pycodestyle <files> to lint, available also in vscode

## PIP

### Typical deps

pip3 install virtualenv

### Typical cmds

    # Show installed packages including paths
    pip3 list -v
    # Details including path to installed package
    pip3 show <pkg>, pip3 show virtualenv 

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

- Excellent introduyction: https://realpython.com/async-io-python/#the-10000-foot-view-of-async-io
