# npm cheatsheet

## Install or update on windows
Download and run installer from <https://nodejs.org/en>
npm gets installed/updated at the same time

### npm path
After installation, make sure your path contains
* path to node root directory (where node and npm binaries are)
* path to global installations (where installed npm tools are), use npm config get prefix to find it

## npm problems

### Install fails on my machine
Check node and npm versions! (Don't know how to make this automatically checked yet).

## Cygwin
Cygwin is no longer supported unfortunately, you have to use git bash or powershell.

## npm commands

    npm install  # Installs packages in package.json
    npm outdated # Shows package versions; current, wanted, latest    
	npm config get prefix # Find the path to npm's directory