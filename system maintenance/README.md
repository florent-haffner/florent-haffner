# Dotfiles

This is a repository to help with system configuration and maintenance.

## Zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Storage
```
sudo hdparm -Y -S 36 /dev/sdb
```

## GPU info
> Source : https://askubuntu.com/questions/5417/how-to-get-the-gpu-info
```
glxinfo | egrep -i 'device|memory'
```

---
## PM : Update and cleaning (Old config with Archlinux)
```
# Update PM && removed orphans && clean packages cache
yay -Syu && yay -Rs $(yay -Qqtd) && paccache -rk1
```
