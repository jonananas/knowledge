# Download and install chrome (download by googling :)
sudo dnf install ./google-chrome-stable_current_x86_64.rpm

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
#sudo dnf install libgnome pygtk2 python-gpgme
#sudo rpm -i nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
sudo dnf install ./nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm

# Install sky / telred
sudo dnf --assumeyes install https://tel.red/repos/fedora/27/noarch/telred-fedora-27-latest.fc27.noarch.rpm
sudo dnf --assumeyes install sky

# Install docker
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce
sudo dnf install docker-compose
sudo systemctl start docker

# Install Visual Studio Code (ska finnas repo för denna)
curl -fsSL --output code-latest.el7.x86_64.rpm https://vscode-update.azurewebsites.net/latest/linux-rpm-x64/stable
#curl -fsS https://az764295.vo.msecnd.net/stable/f88bbf9137d24d36d968ea6b2911786bfe103002/code-1.20.1-1518536126.el7.x86_64.rpm -O
sudo rpm -i code-latest.el7.x86_64.rpm

# Install virtualbox
sudo dnf install kernel-devel gcc make perl elfutils-libelf-devel
curl -fsS https://download.virtualbox.org/virtualbox/5.2.6/VirtualBox-5.2-5.2.6_120293_fedora26-1.x86_64.rpm -O
curl -fsS https://www.virtualbox.org/download/hashes/5.2.6/SHA256SUMS -O
sudo dnf install ./VirtualBox-5.2-5.2.6_120293_fedora26-1.x86_64.rpm

# Install Oracle Java (download jdk-8u161-linux-x64.rpm from http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
sudo dnf install ./jdk-8u161-linux-x64.rpm
sudo alternatives --install /usr/bin/java java /usr/java/latest/bin/java 200000 
sudo alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000
sudo alternatives --install /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 /usr/java/latest/lib/amd64/libnpjp2.so 20000
sudo alternatives --install /usr/bin/jvisualvm jvisualvm /usr/java/latest/bin/jvisualvm 200000
alternatives --config java

# Install slack app (you cannot present in slack from browser)
# Download from https://slack.com/downloads/linux
sudo dnf install ./slack-3.0.5-0.1.fc21.x86_64.rpm

# Optional: Install OneDrive https://github.com/skilion/onedrive (only syncs OneDrive, not sharepoint unfortunately. But can be setup to flow to sharepoing, not from)
sudo dnf install libcurl-devel sqlite-devel
curl -fsS https://dlang.org/install.sh | bash -s dmd
source ~/dlang/dmd-2.078.3/activate
git clone https://github.com/skilion/onedrive.git
cd onedrive
make
sudo make install
onedrive

# Gnome settings
gsettings set org.gnome.desktop.interface clock-show-date true

# alacarte - Menu editor for the GNOME desktop (to add applications to search menu)
sudo dnf install alacarte

# network printers
system-config-printer
- press y to install if not already installed
- Click Add, choose networks printers - follow guide
