#!/bin/bash
# Install homebrew https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install software
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask mattermost
brew install --cask tunnelblick
brew install --cask dropbox
brew install --cask vlc
brew install --cask iina
brew install --cask libreoffice
# use caffeinate -d instead of caffeine, included in OSX
brew install md5sha1sum
# OSX ships with very old bash because of license reasons
brew install bash
brew install git-lfs
brew install p7zip

# Dev tools
brew install --cask visual-studio-code
brew install cmake ninja ccache doxygen
brew install isen-ng/dotnet-sdk-versions/dotnet-sdk8-0-100
brew install nuget
brew install pulumi
brew install npm
brew install java
## Make openjdk visible to Java wrappers
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install maven
brew install awscli
brew install jq

# Python
brew install python@3.9 python@3.11
pip3.9 install poetry

# Setup git
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
## Get maxline support, highlighing, etc
echo "syntax on" >> ~/.vimrc
## Do not page git branch
git config --global pager.branch false

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zoxide fzf
sed -i .bak "s/\(^plugins=[^)]*\)/\1 zoxide/g" .zshrc
# Alt full-line replacement: sed -i .bak "s/^plugins=.*/plugins=(git zoxide)/g" .zshrc

# Alternatively use fish or prezto with brew install fish/prezto

# Create ssh pair for github/gitlab and
# Enable ssh-agent
# https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# Docker for mac https://hub.docker.com/editions/community/docker-ce-desktop-mac
##	As opposed to manual install - for a tighter integration.
##	docker run -d -p 80:80 docker/getting-started
