# Lenovo G510: Fedora does not install wifi-drivers
From:
https://ask.fedoraproject.org/en/question/99042/no-wifi-in-fedora-25-new-to-fedora-and-linux/

## Fedora 29
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-29.noarch.rpm https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-29.noarch.rpm
sudo dnf install -y broadcom-wl kernel-devel
sudo akmods --force --kernel `uname -r` --akmod wl
sudo modprobe -a wl
sudo reboot

## Fedora 30
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-30.noarch.rpm https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-30.noarch.rpm
sudo dnf install -y broadcom-wl kernel-devel
sudo akmods --force --kernel `uname -r` --akmod wl
sudo modprobe -a wl

### Above does not really fix problem, currently downgrade is needed:
curl https://rpmfind.net/linux/fedora/linux/releases/29/Everything/x86_64/os/Packages/w/wpa_supplicant-2.6-17.fc29.x86_64.rpm -o wpa_supplicant-2.6-17.fc29.x86_64.rpm
sudo dnf install -y ./wpa_supplicant-2.6-17.fc29.x86_64.rpm
sudo reboot
