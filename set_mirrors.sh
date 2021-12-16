#!/bin/bash

# Install pacman-contrib group for rankmirrors
pacman -S pacman-contrib --noconfirm

# Backup mirrorlist
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup

# Take the top 6 fastest mirrors and save them to mirrorlist file
rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist

# Force refresh mirrors
pacman -Syy

# EOF
