# Fedora-post-installation-simple-script
A simple post installation script to automate some common settings changes after installing Fedora Workstation (GNOME).  

*Needs admin privileges*

Behavior overview:
- it assumes you're using Fedora (it uses dnf and flatpak)
- adds flathub repo
- updates all repositories
- installs updates
- installs packages
- changes a few of settings with dumb defaults



RPM packages installed:
- vim
- gnome-tweaks
- gnome-shell-extension-appindicator
- virtualization group
      - virt-install
      - libvirt-daemon-config-network
      - libvirt-daemon-kvm
      - qemu-kvm
      - virt-manager
      - virt-viewer
      - guestfs-tools
      - libguestfs-tools
      - python3-libguestfs
      - virt-top
      
      
      
Flatpak packages installed:
- librewolf
- spotify
- discord
- signal
- dejadup
- flatseal
- extension manager
- thunderbird
- warpinator
- tor browser
- ungoogled chromium



GNOME settings changes:
- show battery life percentage
- allow volume over 100%
- add minimize and maximize buttons in addition to close button 
- changes theme to dark mode
- disable touchpad while typing set to "False"
- tap-to-click enabled
     

