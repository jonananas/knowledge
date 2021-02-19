# Mac tips
## Generic 
### Keep display awake - until command stopped

    caffeinate -d

### Check wifi ip

    ipconfig getifaddr en0
    # this works also on linux, windows
    ifconfig | sed -En 's/.*inet (([0-9]+\.*){4}).*/\1/p' | egrep -v "^127.*"

## Settings
### Maximize window keyboard shortcut:
> System Settings → Keyboard → Shortcuts → App Shortcuts: + Zoom, Cmd-Opt-m

### Enable zoom with Ctrl-pad: 
> System Settings → Accessibility→ Zoom: Enable “use scroll gesture with modifier keys to zoom”
# Cmdline tools

    # Check which process is using a file/directory/drive
    fuser <path>
    # List all open files
    lsof

## Keyboard shortcuts

### Chrome
Shortcut    | Command
------------|------------------------
Cmd-Shift-R | Refresh including cache

### iterm/terminal
Shortcut | Command
---------|-------------------------------------
Esc-b    | Move cursor one word back
Esc-f    | Move cursor one word forward
Esc-.    | Insert last word of previous command
