# Fedora Linux keys
Windows-key	Open Activites with searchbox for application etc

Check Super --> keyboard for more keyboard shortcuts

# Terminal keys
Shift-Ctrl-t	Open new tab
Ctrl-PageUp	Next tab
Alt-1		First tab
Ctrl-Shift-C	Copy
Ctrl-Shift-V	Paste

# Searching
Super		Open search dialog
Super, files	Open files, just start typing to search for files

# Commands
xdg-open	opens a file or URL in the user's preferred application

# Upgrade to next version of Fedora
From https://fedoramagazine.org/upgrading-fedora-27-fedora-28/
sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=28
sudo dnf system-upgrade reboot
sudo dnf clean packages
