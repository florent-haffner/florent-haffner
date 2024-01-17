# System maintenance

## Network

Local
```
ip route get 1.2.3.4 | awk '{print $7}'
```

External 
```
curl ifconfig.me
```

# TO UPDATE (not useful since switch from Archlinux to Fedora - 2023-04)
## Package management & dependency
```
# Package information
yay -Qi {packageName}
```

[https://forum.manjaro.org/t/switching-from-pipewire-media-session-to-wireplumber-pamac-tries-to-remove-plasma/90531](https://forum.manjaro.org/t/switching-from-pipewire-media-session-to-wireplumber-pamac-tries-to-remove-plasma/90531) 

```
# To update
pamac remove --unneeded pipewire-media-session

# Ignore temporarily - Linked package will automatically be ignored
sudo dnf update --exclude="xorg-x11-drv-nvidia xorg-x11-drv-nvidia-cuda"
```


## Cleaning system
[https://averagelinuxuser.com/clean-arch-linux/](https://averagelinuxuser.com/clean-arch-linux/) 

> ncdu : Client to see the largest files and directories

> {} : Client to see the largest installed package

*   Orphans (Arch || Manjaro)
    *   [archlinux - Pacman#Installation\_reason](https://wiki.archlinux.org/title/Pacman#Installation_reason) 
    *   [reddit /r/archlinux/comments/bs3riy/remove\_orphan\_packages/](https://www.reddit.com/r/archlinux/comments/bs3riy/remove_orphan_packages/) 
        *   [Wiki - Pacman - Removing\_unused\_packages\_(orphans)](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Removing_unused_packages_(orphans)) 
        *   [WIKI - AUR - Orphan](https://wiki.archlinux.org/title/Arch_User_Repository#Orphan) 

## Printer & scanner

*   [Launching CUPS - Web interface to configure printer](https://bbs.archlinux.org/viewtopic.php?id=193583)
*   [Brother DCP-J1050DW linux driver](https://support.brother.com/g/b/downloadend.aspx?c=fr&lang=fr&prod=dcpj1050dw_eu_as&os=127&dlid=dlf105351_000&flang=4&type3=10282)
*   [Printer/scanner backend /w SANE](https://wiki.archlinux.org/title/SANE#Installation)
    *   [Front-end to SANE](https://wiki.archlinux.org/title/SANE#Install_a_frontend)
    *   [Specific problems](https://wiki.archlinux.org/title/SANE/Scanner-specific_problems#Brother)
