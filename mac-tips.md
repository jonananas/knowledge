# Mac tips

## Generic

### Set default application to VSCode for .py

    brew install duti
    duti -s com.microsoft.VSCode .py all

### Keep display awake - until command stopped

    caffeinate -d

### Check wifi ip

    ipconfig getifaddr en0
    # this works also on linux, windows
    ifconfig | sed -En 's/.*inet (([0-9]+\.*){4}).*/\1/p' | egrep -v "^127.*"

### Check which process is using port

    lsof -nP -iTCP -sTCP:LISTEN | grep <port>

### Workaround for Google Meet adjusting microphone level on Aftershokz devices

Open “Audio MIDI Setup”. Add “Aggregate Device” from + menu: hit the + sign and "Create Aggregate Device". Click the Use box where Input is 1. Select this for input in Google Meet - Done!

From <https://apple.stackexchange.com/questions/97810/mac-osx-microphone-input-volume-level-auto-adjusts-can-it-be-disabled>


### Fix Shokz requiring reboot in google meet

chrome://flags/#enable-web-bluetooth-new-permissions-backend

### Adjust microphone volume from cmdline

`osascript -e "set volume input volume 50"`

## Settings

### Enable zoom with Ctrl-pad

> System Settings → Accessibility→ Zoom: Enable “use scroll gesture with modifier keys to zoom”

### Enable Move focus to next window (with swedish keyboard)

System Settings -> Keyboard -> Keyboard Shortcuts -> Keyboard -> Move focus to next window. Map it to Cmd-§

### Maximize window keyboard shortcut

> System Settings → Keyboard → Shortcuts → App Shortcuts: + Zoom, Cmd-Opt-m

## Cmdline tools

    # Check which process is using a file/directory/drive
    fuser <path>
    # List all open files
    lsof
    # Wait for filesystem changes
    while true; do fswatch -o . | ./run.sh; done

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

### ApolloOne

Shortcut | Command
---------|---------------------------------------
c        | Switch between thumbnail and full mode


## Docker

- [How to show X11 windows with Docker on Mac](https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb)
