# Dotfiles

This is my current $HOME configuration.

> The shell script are used to simplify getting an environment fatsly up and running.

## Update kernel
 
The problem is to load all USB during boot. The soundcard isn't showing on cold boot.
 
The folowing command solve the problem :  https://forum.manjaro.org/t/usb-3-not-showing-up-in-lsusb/116383/4
 
> `sudo sed 's/^GRUB_CMDLINE_LINUX_DEFAULT=\".*[^"]/& iommu=soft/g' -i /etc/default/grub && sudo update-grub`


