#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1
https://download.docker.com/linux/fedora/docker-ce.repo
# this installs a package from fedora repos
rpm-ostree install screen
rpm-ostree install firewalld
rpm-ostree install manafirewall
rpm-ostree install usbguard
rpm-ostree install usbguard-notifier
rpm-ostree install samba
rpm-ostree install podman
rpm-ostree install podman-compose
rpm-ostree install containers-common-extra
rpm-ostree install docker-ce
rpm-ostree install docker-ce-cli
rpm-ostree install containerd.io
rpm-ostree install docker-compose-plugin
rpm-ostree install numix-icon-theme-circle
rpm-ostree install ulauncher
rpm-ostree install plank
rpm-ostree install gtk-xfce-engine
rpm-ostree install flat-remix-gtk2-theme
rpm-ostree install pop-gtk2-theme
rpm-ostree install pop-icon-theme

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable podman.service
systemctl enable usbguard-notifier.service
systemctl enable smb.service
systemctl enable smb.socket
systemctl enable docker.socket
systemctl enable docker.service
