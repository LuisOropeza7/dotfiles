#!/usr/bin/env bash
set -e

echo "=> Updating the system"
sudo dnf update && sudo dnf upgrade -y

echo "=> Instaling basic tools"
sudo dnf install -y \
	git \
	curl \
	wget \
	unzip \
	rsync \
	fastfetch \
	neovim \
	btop \
	sudo
## Install Fedora RPM fusion repos and othe repos

echo "=> añadiendo repositorios..."

# RPM Fusion

sudo dnf install -y \
	https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install flatpak

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf copr enable lionheartp/Hyprland 

echo "Repositorios listos"

echo "=> Installing NVIDIA Drivers"
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda

echo "=> Installing Hyprland"
sudo dnf install -y \ 
	hyprland \
	xdg-user-dirs \
	xdg-desktop-portal-hyprland

