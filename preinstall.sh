loadkeys sv-latin1
timedatectl set-ntp true
cfdisk #dos -> new(80 primary boot) -> new (16 primary) -> new(full extended) -> new on extended
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda5
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda1 /mnt
mkdir /mnt/home
mount /dev/sda5 /mnt/home
pacstrap /mnt base base-devel linux linux-firmware
genfstab /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash
nano /etc/locale.gen #en_US.UTF-8 UTF-8
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
passwd
echo "munhunger-laptop" >> /etc/hostname
echo "munhunger-laptop" >> /etc/hosts
systemctl enable dhcpcd
pacman -S grub os-prober
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount /mnt/home
umount /mnt
reboot
