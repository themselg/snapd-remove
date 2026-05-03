# Snapd removal script for Ubuntu 26.04

This script aims to aid in the removal of all snaps, and snapd from a fresh install of Ubuntu 26.04 LTS. It also blocks the reinstallation of `snapd`, installs Flatpak, GNOME Software, and enables the [Flathub](https://flathub.org/) repository.

> [!CAUTION]
> Canonical does not endorse the removal of `snapd` from the system. No support will be given to a snap free installation. Essential parts of the OS may break, continue at your own discretion.

> [!WARNING]
> This procedure cannot be done on a Hardware-backed disk encrypted (TPM) installation, because it installs the kernel as a snap. Meaning you can't remove it from the system. You will have to reinstall the OS to disable this.

> [!IMPORTANT]
> Many Ubuntu Pro services depend on `snapd`. So they are very likely to not work. Do not remove `snapd` if you depend on the use of Ubuntu Pro.

To run, clone this repository, and type in a terminal:

```
cd snapd-remove && sudo bash snapd-remove.sh
```

After it's finished, reboot.

Removal of the `~/snap` directory must be done manually after the reboot.

> [!NOTE]
> After removing snap, `firefox`, `thunderbird` and `chromium-browser` are not installable from the official APT repositories because they are a transitional package (i.e. they install the snap version), you can either install the Flatpak version or find a PPA that provides the native `.deb` version.
