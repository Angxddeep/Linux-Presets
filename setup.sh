#!/bin/bash

# Configure network connection settings
nmcli connection modify "Airtel_GPL3_5G" ipv4.dns "1.1.1.1, 1.0.0.1"
nmcli connection modify "Airtel_GPL3_5G" ipv4.ignore-auto-dns yes
nmcli connection modify "Airtel_GPL3_5G" ipv6.dns "2606:4700:4700::1111, 2606:4700:4700::1001"
nmcli connection modify "Airtel_GPL3_5G" ipv6.ignore-auto-dns yes
nmcli connection down "Airtel_GPL3_5G"
nmcli connection up "Airtel_GPL3_5G"

# Install Flatpak applications
flatpak install -y com.bitwarden.desktop \
                    com.github.tchx84.Flatseal \
                    com.obsproject.Studio \
                    com.protonvpn.www \
                    com.vscodium.codium \
                    io.github.shiftey.Desktop \
                    io.github.thaunknown.miru \
                    md.obsidian.Obsidian \
                    org.audacityteam.Audacity \
                    org.gimp.GIMP \
                    org.kde.kdenlive \
                    org.libreoffice.LibreOffice \
                    org.localsend.localsend_app \
                    org.qbittorrent.qBittorrent \
                    org.signal.Signal \
                    org.telegram.desktop \
                    org.torproject.torbrowser-launcher \
                    org.videolan.VLC \
                    im.riot.Riot \
                    com.brave.Browser \
                    com.discordapp.Discord \
                    network.loki.Session \
                    org.fedoraproject.MediaWriter \
                    io.missioncenter.MissionCenter \
                    io.mpv.Mpv \
                    com.valvesoftware.Steam \
                    dev.zed.Zed
                                           
# Install DNF packages
sudo dnf install -y alacritty \
                    android-tools \
                    bat \
                    btop \
                    cargo \
                    dialog \
                    epson-inkjet-printer-escpr \
                    epson-printer-utility \
                    fastfetch \
                    gh \
                    git \
                    htop \
                    neovim \
                    rust \
                    zoxide \
                    trash-cli \
                    plasma-browser-integration

echo "All tasks completed!"
