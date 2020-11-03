#!/bin/bash
# Install homebrew https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 

# Install software
brew cask install iterm2
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install mattermost
brew cask install tunnelblick
brew cask install dropbox

# Setup git
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install fasd
sed -i .bak "s/\(^plugins=[^)]*\)/\1 fasd/g" .zshrc
# Alt full-line replacement: sed -i .bak "s/^plugins=.*/plugins=(git fasd)/g" .zshrc

# Alternatively use fish or prezto with brew install fish/prezto

# Create ssh pair for github/gitlab and
# Enable ssh-agent 
# https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# Docker for mac https://hub.docker.com/editions/community/docker-ce-desktop-mac 
##	As opposed to manual install - for a tighter integration.
##	docker run -d -p 80:80 docker/getting-started

