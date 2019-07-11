# Setup git
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Setup zsh and oh-my-zsh
sudo apt install zsh
sudo usermod -s /bin/zsh $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Logout and login again to have zsh take effect
sudo apt install fasd exif
# For Fedora 30 - had to download fasd for fedora 29 manually, hopefully fixed in later fedora 30 versions
# now add fasd and dnf as plugin in .zshrc manually

