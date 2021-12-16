#!/bin/sh

DRIVERS=(
	"nvidia-dkms"
	"nvidia-settings"
	"nvidia-utils"
	"opencl-nvidia"
	"lib32-nvidia-utils"
	"lib32-opencl-nvidia"
	"libvdpau"
	"lib32-glvnd")

DISPLAY_SERVER_UTILS=(
	"xorg"
	"xorg-server"
	"xorgs-apps"
	"xorg-init"
	"xorg-twm"
	"xorg-xclock"
	"xterm")

DESKTOP_ENV=(
	"plasma-desktop"
	"sddm"
	"plasma-wayland-session"
	"bspwm"
	"sxhkd")

BROWSERS=(
	"firefox"
	"brave"
	"chromium")

TERMINAL=(
	"konsole"
	"alacritty")

FILE_MANAGERS=(
	"ranger"
	"dolphin")

GAMING_UTILS=(
	"steam"
	"discord"
	"gamemode"
	"lutris")

VIRTUALIZATION_UTILS=(
	"qemu"
	"libvirt"
	"edk2-ovmf"
	"virt-manager"
	"ebtables"
	"dnsmasq")

OTHER_PACKAGES=(
	"keepassxc"
	"spotifyd"
	"kvantum-qt5"
	"ntfs-3g"
	"playerctl"
	"bashtop"
	"celluloid"
	"gimp"
	"grub-customizer"
	"jdk-openjdk"
	"code"
	"nvtop"
	"openssh"
	"python"
	"python-pip"
	"wine"
	"winetricks")

AUR_PACKAGES=(
	"ckb-next"
	"openrgb"
	"protonup-qt"
	"spotify-qt")



echo -e "\nInstalling Nvidia Drivers\n"
for PKG in "${DRIVERS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling X Display Server\n"
for PKG in "${DISPLAY_SERVER_UTILS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling Desktop Environment and Display Manager\n"
for PKG in "${DESKTOP_ENV[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling Browsers\n"
for PKG in "${BROWSERS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling Terminals\n"
for PKG in "${TERMINALS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling File Managers\n"
for PKG in "${FILE_MANAGERS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling Gaming Utilities\n"
for PKG in "${GAMING_UTILS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling Virtualization Utilities\n"
for PKG in "${VIRTUILIZATION_UTILS[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nInstalling Everything Else\n"
for PKG in "${OTHER_PACKAGES[@]}"; do
	echo "Installing : ${PKG}"
	sudo pacman -S "$PKG" --noconfirm --needed
done



YAY_URL="https://aur.archlinux.org/yay.git"

mkdir ~/git
git clone "$YAY_URL" ~/git
cd ~/git/yay
makepkg -si



echo "Installing AUR Packages"
for PKG in "${AUR_PACKAGES[@]}"; do
  echo "Installing : ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

