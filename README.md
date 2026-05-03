# Snapd removal script for Ubuntu 26.04

This script aims to aid in the removal of all snaps, and snapd from a fresh install of Ubuntu 26.04 LTS. It also blocks the reinstallation of snapd, installs Flatpak, GNOME Software, and enables the Flathub repository.

> [!CAUTION]
> Canonical does not endorse the removal of `snapd` from the system. No support will be given to a snap free system. Essential parts of the OS may break, continue at your own discretion. 

To run, clone this repository, and type in a terminal:

```
cd snapd-remove && sudo bash snapd-remove.sh
```

After it's finished, reboot.

Removal of the `~/snap` directory must be done manually after the reboot.
