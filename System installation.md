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

## Grub fix timeout
> sudo vim /etc/default/grub
```bash
GRUB_RECORDFAIL_TIMEOUT=3 # Supposed to help with timeout 30s->3s
```
sudo update-grub


## Qemu
Setup VM W11
- CPU topology : 1 socket, 8 cores, 2 threads
- Ram allocation : 16384 Mib
- [Virtio windows drivers/utilities](https://github.com/virtio-win/virtio-win-pkg-scripts/blob/master/README.md) -> [Latest virtio-win-guest-tools.exe](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/latest-virtio/virtio-win-guest-tools.exe)


## SMD share
/etc/hosts

# Local network host
localadress hostname
https://atlassc.net/2021/08/10/mount-synology-with-cifs-utils-on-ubuntu/

## Other tools
- spotify easyeffects vscode jetbrains-toolbox signal discord
- [LanguageTool - Grammar check](https://languagetool.org/)



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
