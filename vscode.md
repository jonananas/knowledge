# [Visual code](https://code.visualstudio.com/docs) cheatsheet

[OSX Keyboard shortcuts](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

## Generic Keyboard shortcuts

Shortcut        | Command
----------------|-----------------------------------
Cmd-P           | Find file/Quick Open/Go to File... --> Opt-Enter to open in edit mode!
Shift-Cmd-E     | Reveal file in File Explorer
Shift-Cmd-O     | Go to Symbol...
Alt-Cmd-P       | Open project
Shift-Cmd-P     | Commands
Shift-Cmd-X     | Extensions
Cmd-K Z         | Zen Mode (Esc Esc to exit)
Opt-Up/Dn       | Move line up/down
Shift-Opt-Up/Dn | Copy line up/down
Ctrl-J          | Merge lines

## Editor

Shortcut    | Command
------------|--------------------
Shift-Cmd-k | Delete current line

## Terminal

Shortcut | Command
---------|---------------
Cmd-J    | Open terminal
Cmd-k    | Clear terminal

## Comments

Shortcut    | Command
------------|----------------
Cmd-K Cmd-C | Block comment
Cmd-K Cmd-U | Block uncomment
Cmd-/       | Toggle comment

## [Markdown](https://code.visualstudio.com/docs/languages/markdown)

Shortcut    | Command
------------|-----------------------------------------
Shift-Cmd-V | Show preview
Cmd-K V     | Preview and code side by side
Cmd-K Cmd-F | Format table (Markdown table prettifier)

## Search/Replace

Shortcut    | Command
------------|------------------------------------
Shift-Cmd-L | Mark all matches for change
Cmd-F       | Find in file
Opt-Cmd-F   | Replace in file
Shift-Cmd-F | Find in all files
Shift-Cmd-H | Replace in all files
Cmd-D       | Add next to selection **** Awesome!
Alt-Click   | Add/Remove a selection (select/unselect Cmd-D selected item)

## Extensions shortcuts

Project Manager - easily switch between projects, manages list of your favorite projects. [Marketplace](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager)

## Linting

https://code.visualstudio.com/docs/python/linting#_specific-linters

### Disable specific pylint warnings for project

Add below to `.vscode/settings.json`:
```json
"pylint.args": ["--disable=C0116"],
```

## Browse github with vscode in browser

https://github1s.com/jonananas/knowledge

## From VS Code Tips, Tricks & Extensions

By @SonnySanga #papafam, https://www.youtube.com/watch?v=qe7sO2vpRSQ

Cmd-k,Cmd-s Show keyboard shortcuts
Cmd-, Settings

### Extensions

- Live Share
- Prettier - Code formatter
  - Cmd-k, Cmd-f to format document
- GitLens
- vscode-icons, only visual
- ES7+React/Redux/React-Native snip
  - Probably my most used extension
- Todo
  - Highlight TODO/FIXME, and show formatted list of all of them.
- Tailwind CSS IntelliSense
  - Autocomplete for css, color boxes, etc.
- Live Server
  - Run server with your html-document in a tab in vscode.
- Import cost
  - Shows import cost (size of package) of js/ts imports.
