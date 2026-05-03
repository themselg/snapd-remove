#!/bin/bash

snap remove firefox firmware-updater desktop-security-center
snap remove snap-store
snap remove core23 gnome-46-2404 gtk-common-themes mesa-2404 prompting-client
snap remove bare
snap remove snapd-desktop-integration
snap remove core24
snap remove snapd
apt remove -y snapd
apt-mark hold snapd
rm -rf /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd
apt install -y flatpak gnome-software gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Snaps removed and replaced with Flatpak. Reboot now"
