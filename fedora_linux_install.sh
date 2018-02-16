# Setup git
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Setup zsh and oh-my-zsh
USERNAME=username
sudo dnf install zsh
sudo uusermod -s /bin/zsh $USERNAME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Logout and login again to have zsh take effect
sudo dnf install fasd
# now add fasd and dnf as plugin in .zshrc manually

# Install dropbox
wget -O nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
sudo dnf install libgnome
sudo dnf install pygtk2
sudo dnf install python-gpgme
sudo rpm -i nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm

# Install sky / telred
sudo dnf --assumeyes install https://tel.red/repos/fedora/27/noarch/telred-fedora-27-latest.fc27.noarch.rpm
sudo dnf --assumeyes install sky
