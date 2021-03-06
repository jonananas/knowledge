# Windows tools

## Essentials
* Chrome
* Cygwin
* Git for windows - Preoptimized git for Windows with NTFS
* ConEmu - Run all terminals in same window with tabs

## Package managers (choose one)
* [cyg-apt](https://github.com/transcode-open/apt-cyg)
* [pacman for Git for windows SDK](https://github.com/git-for-windows/build-extra/releases)
* [pact for Babun ( Preconfigured Cygwin )](http://babun.github.io/)

## Extras
* Kdiff3 - Compare files, for example in git.
* Pandoc - Convert text, spreadsheets to other formats, ie docx-->md, xlsx --> md etc. 
* [Process Explorer](https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer) - Tells you which program has a file or directory open. <https://technet.microsoft.com/en-us/sysinternals/bb896653>
* [Handle](https://docs.microsoft.com/en-us/sysinternals/downloads/handle) - Cmdline equivalence of Process Explorer.
* [windirstat](https://windirstat.net/download.html) - Heatmap of disk usage.

## Commands
* mklink - Create windows link. Run in cmd, for example by running runas cmd from cygwin.
* netstat -a -b - Lists ports and who uses them
* resmon - Starts resource monitor, which shows used ports, memory, disc, etc.

## Node
Use [nvm](https://github.com/coreybutler/nvm-windows/releases)

    cd /cygdrive/c/MyPrograms/nvm 
    wget https://github.com/coreybutler/nvm-windows/releases/download/1.1.6/nvm-noinstall.zip
    unzip nvm-noinstall.zip
    Run install.cmd

Instead of using nvm use <version> which seem to not work under cygwin, you can symlink manually

# Windows strategies

## Downloaded software
Install all downloaded software into C:\MyPrograms to keep track. JDK and JRE are installed under C:\MyPrograms\Java.

## Installing java
When installing Java SE using Oracles installer, first path you specify is jdk, second is jre. 
After installing Java

    runas fix_javapath.bat
Fixes javapath with next two steps (Javahome, Javapath)

## Javahome
JAVAHOME points to generic link which in turn points to latest jdk

    cd C:\MyPrograms\Java
    mklink /J jdk1.8 jdk1.8_112


## Javapath
To change oracle-created link to jre (A "hard" directory link, also called Junction), as Admin:

    cd C:\ProgramData\Oracle\Java
    rmdir javapath
    mklink /J javapath c:\MyPrograms\Java\jdk1.8\bin

# Cygwin
- zsh (use installer)
- oh-my-zsh - <https://github.com/robbyrussell/oh-my-zsh>
Use <https://cygwin.com/cgi-bin2/package-grep.cgi> to search for commands, is similar to

    apt-cyg searchall fuser
    
## Same home for cygwin and windows

Edit /etc/nsswitch.conf, uncomment (did not work last time)

    db_home: windows 

Alternatively make current user use windows home

    mkpasswd -c -p "$(cygpath -H)" > /etc/passwd
Still have to edit /etc/passwd to change shell.

## Program directory and paths
Since "Program Files" are bit of a hassle to use in cygwin 
* Link Program to "Program Files"

    mklink /J Program "Program Files"

## Cygwin and ssh-agent
Put below in .zshrc or similar

    # Setup ssh-agent
    if [[ -e $HOME/.sshagent.conf ]]; then
          . $HOME/.sshagent.conf>/dev/null
    fi

    # If agent above is not running, then restart it
    if `ps -p ${SSH_AGENT_PID}>/dev/null`;then true;
    else
      ssh-agent >| $HOME/.sshagent.conf
      . $HOME/.sshagent.conf
      ssh-add ~/.ssh/id_rsa
    fi
    
## Cygwin and run as administrator / sudo replacer
If you put "sudo-replacer" below in .zshrc or similar

    runas() {
        cygstart --action=runas "$@"
    }
    
you can run cmd as administrator by

    runas cmd
    
