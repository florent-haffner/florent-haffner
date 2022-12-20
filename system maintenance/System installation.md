# System installation

## Linux - Base + utils
```bash
sudo pacman -S make cmake gcc clang tilix patch zsh yay vim nautilus
```

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```bash
curl -s "https://get.sdkman.io" | bash
```

[Conda installation](https://docs.conda.io/en/latest/miniconda.html#linux-installers)


## Comfort
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

```bash
git config --global user.email "your_email@example.com" && git config --global user.name "name.name"
```

```bash
sudo pacman -Syu yay htop nvtop vim tilix nautilus fakeroot

yay -S plank spotify easyeffects snap vscode ulauncher jetbrains-toolbox signal discord
```

```bash
export EDITOR=vim
```


---
### Virtualization
```bash    
sudo pacmans -S docker docker-compose
    
sudo usermod -aG docker $USER
```


## Fonts & emoji
- Fonts -> `yay -Syu noto-fonts`
- [Apple emoji](https://aur.archlinux.org/packages/ttf-apple-emoji)
