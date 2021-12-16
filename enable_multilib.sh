#!/bin/bash

# Uncomment multilib in pacman.conf
sed -i "s/#[multilib]/[multilib]/" /etc/pacman.conf
sed -i "s/#Include = \/etc\/pacman.d\/mirrorlist/Include = \/etc\/pacman.d\/mirrorlist/" /etc/pacman.conf

# Force refresh mirrors
pacman -Syy

# EOF