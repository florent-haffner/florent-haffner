# System installation

## Work & terminal utils
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

```bash
sudo setfacl -R -m "u:rslsync:rwx" /home/your-username
```

## Qemu - W11 guest tools
- [Virtio windows drivers/utilities](https://github.com/virtio-win/virtio-win-pkg-scripts/blob/master/README.md) -> [Latest virtio-win-guest-tools.exe](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/latest-virtio/virtio-win-guest-tools.exe)



---
## Tools
### Utilities
```bash
htop nvtop vim tilix nautilus

spotify easyeffects snap vscode jetbrains-toolbox signal discord
```

### Office and other things
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
