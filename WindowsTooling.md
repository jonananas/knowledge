# Windows tools

## Essentials
* Cygwin
* Git for windows - Preoptimized git for Windows with NTFS
* ConEmu - Run all terminals in same window with tabs

## Package managers (choose one)
* apt-cyg for Cygwin https://github.com/transcode-open/apt-cyg
* pacman for Git for windows SDK https://github.com/git-for-windows/build-extra/releases
* pact for Babun ( Preconfigured Cygwin ) http://babun.github.io/

## Extras
* Kdiff3 - Compare files, for example in git.
* Pandoc - Convert text, spreadsheets to other formats, ie docx-->md, xlsx --> md etc. 


## Node
A bit outdated: https://howtonode.org/how-to-install-nodejs

    apt-cyg install openssl gcc-g++ make python git
    git clone https://github.com/nodejs/node
    cd node
    ./configure
    make
    sudo make install    

# Windows strategies

## Downloaded software
Install all downloaded software into C:\MyPrograms to keep track. Including JDK and JRE.

## Javahome
JAVAHOME points to generic link which in turn points to latest jdk

    cd C:\MyPrograms\Java
    mklink /J jdk1.8 jdk1.8_112


## Javapath
To change oracle-created link to jre (A "hard" directory link, also called Junction)

    cd C:\ProgramData\Oracle\Java
    del javapath
    mklink /J javapath c:\MyPrograms\Java\jdk1.8\bin

# Cygwin
Use <https://cygwin.com/cgi-bin2/package-grep.cgi> to search for commands, is similar to

    apt-cyg searchall fuser

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
    