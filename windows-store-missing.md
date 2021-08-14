# Microsoft store missing

The Microsoft Store app and the feedback app was missing.

## Version

Windows 10 Pro, Version 21H1 and Build 19043.1110

## What worked

After trying the things below, I finally had to reformat the C drive and reinstall windows:

- Download the [Media Creation tool](https://www.microsoft.com/software-download/windows10)
- Use Media Creation Tool to create a bootable USB Flash drive, minimum 8 GB needed.
  - Boot from USB
  - Choose Install Windows
  - Advanced install
  - Format C drive (Partition 2 for me)
  - Next

This will of course wipe your c drive, so make sure you have anything important backed up.
A tip is to check what additional drivers you need, ie graphics card, etc.

### Additional drivers

- Nvidia GeForce GTX 970
- PCI Simple Communication Controller got fixed via Windows Update-->View optional updates-->Intel Management Engine Interface
  - Got there via Device Manager --> Properties --> Hardware ID, where VEN(dor) and DEV(ice) could be entered into https://pcilookup.com to find out more about the device.
  - I then googled a bit before realizing the device was called Management Engine Interface.

The install did not install NVidia drivers, finding out which graphics card required some extra steps.

- Install Java from Internet Explorer (Edge och Chrome does not support Java anymore)
- Add nvidia.com to Configure Java --> Security --> "Exceptions"
- Go to <https://www.nvida.com/Download/Scan.aspx>

## Things that didn't work

Several things were tried before reformat and reinstall:

- Windows Store Troubleshooter - Found No issues
- Restarting the Microsoft Install Store Service - No difference
- Running wsreset.exe - Error message "You'll need a new app to open this ms-windows-store link".
- Dism /Online /Cleanup-Image /ScanHealth - Found No issues.
- Reset this PC (from local and cloud)
- Media Creation Tool to "Upgrade this PC"
