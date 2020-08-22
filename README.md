# Dotfiles

This is my current $HOME configuration.

> The shell script are used to simplify getting an environment fatsly up and running.

## git

git config --global user.email "florent.haffner@protonmail.com"
git config --global user.name "florent.haffner"

## Update kernel
 
The problem is to load all USB during boot. The soundcard isn't showing on cold boot.
 
The folowing command solve the problem :  https://forum.manjaro.org/t/usb-3-not-showing-up-in-lsusb/116383/4
 
> `sudo sed 's/^GRUB_CMDLINE_LINUX_DEFAULT=\".*[^"]/& amd_iommu=on iommu=pt/g' -i /etc/default/grub && sudo update-grub`

## GPU Info

From : https://askubuntu.com/questions/5417/how-to-get-the-gpu-info

> `glxinfo | egrep -i 'device|memory'`

