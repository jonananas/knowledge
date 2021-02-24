# Python for Java programmers
http://python4java.necaiseweb.org/

# Python koans
https://github.com/gregmalcolm/python_koans
Make sure you have python installed, below is for python2
Open contemplate_koans.py in your favorite editor and run it, or use run.sh

    git clone https://github.com/gregmalcolm/python_koans.git
    cd python_koans/python2
    ./run.sh

# What the f*ck python
Exploring and understanding Python through surprising snippets.

https://github.com/satwikkansal/wtfpython/blob/master/README.md

# Tools
- pycodestyle <files> to lint, available also in vscode

# PIP
## Typical deps
pip3 install virtualenv

## Typical cmds

    # Show installed packages including paths
    pip3 list -v
    # Details including path to installed package
    pip3 show <pkg>, pip3 show virtualenv 

## Virtual environments
Can be put anywhere, ie ~/venv/myenv

    # Create
    python3 -m venv ~/venv/myenv
    # activae
    source ~/venv/myenv/bin/activate
    # deactivate
