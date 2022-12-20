#!/bin/bash

echo "Running PISS (p0st-Installation Simple Script)"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "PISS: Flathub repo added"

echo "PISS: Updating repositories..."
dnf update -y
flatpak update -y

echo "PISS: Installing dnf packages..."
dnf install vim gnome-tweaks gnome-shell-extension-appindicator -y

echo "PISS: Installing virtualization tools..."
dnf install @virtualization -y

echo "PISS: Installing flatpak packages..."
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.signal.Signal -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install flathub org.gnome.DejaDup -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub org.x.Warpinator -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y

echo "PISS: Fixing some of GNOME's bullshit settings..."
dconf write /org/gnome/desktop/interface/show-battery-percentage "true"
dconf write /org/gnome/desktop/sound/allow-volume-above-100-percent "true"
dconf write /org/gnome/desktop/wm/preferences/button-layout "'appmenu:minimize,maximize,close'"
dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
dconf write /org/gnome/desktop/peripherals/touchpad/disable-while-typing "false"
dconf write /org/gnome/desktop/peripherals/touchpad/tap-to-click "true"

echo "PISS: Script terminating..."
echo "Thank you for using pISS: p0st-Installation Simple Script!
