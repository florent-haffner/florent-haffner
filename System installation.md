# System installation

## Work & terminal utils
Necessary tools
```bash
htop nvtop vim tilix nautilus snap
```

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
[MiniConda installation](https://docs.conda.io/en/latest/miniconda.html#linux-installers)



## Comfort
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

```bash
git config --global user.email "your_email@example.com" && git config --global user.name "name.name"
```

```bash
export EDITOR=vim
```

## Resilio
[Run Resilio as current user](https://frkd.dev/posts/2021-03-01-resilio-sync-linux-user/)

Mount disk as current user
```bash
udisksctl mount -b /dev/disk/by-label/xxx
```


## Qemu
Setup VM W11
- CPU topology : 1 socket, 8 cores, 2 threads
- Ram allocation : 16384 Mib
- [Virtio windows drivers/utilities](https://github.com/virtio-win/virtio-win-pkg-scripts/blob/master/README.md) -> [Latest virtio-win-guest-tools.exe](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/latest-virtio/virtio-win-guest-tools.exe)


## Other tools
- spotify easyeffects vscode jetbrains-toolbox signal discord
- [LanguageTool - Grammar check](https://languagetool.org/)
- atop: a lot of stuff for monitoring the desktop
- powertop: useful for power consumption (C1 and all)...



---
# Maintenance 
## Storage
```
sudo hdparm -Y -S 36 /dev/sdb
```

## GPU info
> Source : https://askubuntu.com/questions/5417/how-to-get-the-gpu-info
```
glxinfo | egrep -i 'device|memory'
```
