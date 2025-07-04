## Connect to the WiFi

## Open internet wireless control utility (iwctl)

iwctl

## List all devices

device list -> choose one network card calls <network-card>

## Scan the networks

station <network-card> scan

station <network-card> get-networks -> choose one wifi you will connect calls <wifi-name>

## Connect to the WiFi

station wlan0 connect <wifi-name>

**Type the password**

## Check if WiFi is connected

ping google.com

# Update packages

pacman -Syu

# Partition

## Check disk

lsblk -> choose one disk to install calls <disk>

## Create partitions 

cfdisk /dev/<disk>

1G EFI file system for booting calls <boot>

4G Linux swap for swap calls <swap>

~100G Linux filesystem for files calls <files>

## Format disks

mkfs.fat -F 32 /dev/<boot>

mkswap /dev/<swap>

mkfs.ext4 /dev/<files>

## Create folder and mount

mount /dev/<files> /mnt

mkdir /mnt/boot

mount /dev/<boot> /mnt/boot

swapon /dev/<swap>

# Install base system

pacstrap -i /mnt base base-devel linux linux-headers linux-firmware intel-ucode sudo git nano vim fastfetch htop cmake make bluez bluez-utils networkmanager cargo gcc mpv neovim dhcpcd openssh

pacman -Sy vi

genfstab -U /mnt >> /mnt/etc/fstab

check: cat /mnt/etc/fstab

# Config

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

nvim /etc/locale.gen -> uncomment en_US.UTF-8

locale-gen

## language

[root@archiso /]# nvim /etc/locale.conf

LANG=en_US.UTF-8

## Keyboard

[root@archiso /]# nvim /etc/vconsole.conf

KEYMAP=us

## Hostname

nvim /etc/hostname

CCLEMON

## Hosts

nvim /etc/hosts

127.0.1.1   CCLEMON.localhost   CCLEMON

## Enable services

systemctl enable dhcpcd.service sshd.service bluetooth NetworkManager

## Adding user

pacman -Syu sudo

useradd -m winky

usermod -aG wheel winky

passwd winky

New password:

Retype new password:

passwd: password updated successfully

visudo

=> uncomment %wheel

# Install GRUB bootloader



pacman -S grub efibootmgr dosfstools mtools

pacman -S os-prober

grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=ArchLinux



**For dual boot**:

nvim /etc/default/grub -> uncomment GRUB_DISABLE_OS_PROBER=false

mount to Windows EFI system for me it's /dev/nvme0n1p1

-> mount /dev/nvme0n1p1 /mnt

os-prober

sudo grub-mkconfig -o /boot/grub/grub.cfg



# First boot

## Connect to wifi via NetworkManager

ncmli dev wifi list

nmcli dev wifi connect <wifi-name> --ask

**Type the password**

Check: nmcli connection show

