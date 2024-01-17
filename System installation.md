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

