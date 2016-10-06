# Windows tools

* Cygwin
* Git for windows - Preoptimized git for Windows with NTFS
* ConEmu - Run all terminals in same window with tabs


## Package managers
* apt-cyg for Cygwin https://github.com/transcode-open/apt-cyg
* pacman for Git for windows SDK https://github.com/git-for-windows/build-extra/releases
* pact for Babun ( Preconfigured Cygwin ) http://babun.github.io/

## Node
A bit outdated: https://howtonode.org/how-to-install-nodejs

    apt-cyg install openssl gcc-g++ make python git
    git clone https://github.com/nodejs/node
    cd node
    ./configure
    make
    sudo make install