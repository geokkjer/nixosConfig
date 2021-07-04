#!/usr/bin/env bash

#echo | cowsay -f tux.cow "Welcome"

printf "**********************************\n"
printf "* Welcome to the NixOS installer *\n"
printf "**********************************\n"


if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Disks Before partitioning\n"
lsblk

read -p "Enter device to parititon with fdisk (eg. /dev/sda): " DEV
fdisk $DEV

# EFI or BIOS
read -p "Is the system EFI or BIOS(type EFI or BIOS):" EFB

if [ "$EFB" == "EFI" ]; 
then
    read -p "Enter the EFI patrition (eg. /dev/sda1)" EFI
    mkfs.fat -F32 $EFI
    read -p "Enter the root partition" ROOT
    mkfs.btrfs $ROOT
elif [ "$EFB" == "BIOS" ]; then
    read -p "Enter the root partition" ROOT
    mkfs.btrfs $ROOT
else
  echo "start over"
  exit 0
fi

# Mount the root partition
printf "Mounting root parition"
sleep 2
mount $ROOT /mnt

# make subvolumes
printf "Making btrfs subvolumes"
btrfs su cr /mnt/@
btrfs su cr /mnt/@home
btrfs su cr /mnt/@var
btrfs su cr /mnt/@snapshots
sleep 2
# unmount
printf "Unmounting root partition"
umonut /mnt
sleep 1
printf "Remounting the btrfs subvolumes and making directories"
#remount the subvolumes and make the folders
mount -o noatime,compress=lzo,space_cache,subvol=@ $ROOT /mnt
mkdir -p /mnt/{boot,home,var,.snapshots}
mount -o noatime,compress=lzo,space_cache,subvol=@home $ROOT /mnt/home
mount -o noatime,compress=lzo,space_cache,subvol=@var $ROOT /mnt/var
mount -o noatime,compress=lzo,space_cache,subvol=@snapshots $ROOT /mnt/.snapshots
chattr +C /mnt/var
sleep 1

# mount EFI partition
#if
printf "Mounting the EFI partition"
mount $EFI /mnt/boot
# Generate config
printf "Generatin initial config for the system"
nixos-generate-config --root /mnt
sleep 2

nano /mnt/etc/nixos/configuration.nix

# Populate the filesystem
printf "Installing NixOS :-)"
nixos-install


