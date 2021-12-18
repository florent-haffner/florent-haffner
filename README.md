# Dotfiles

This is a repository to help with system configuration and maintenance.

## Zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```


## PM : Update and cleaning

Mac
```
brew update && brew upgrade && brew upgrade --cask && brew cleanup
```

Linux
```
yay -Syu && yay -Rs $(yay -Qqtd)
```


## Storage

```
sudo hdparm -Y -S 36 /dev/sdb
```


## GPU

Infos : https://askubuntu.com/questions/5417/how-to-get-the-gpu-info

```
glxinfo | egrep -i 'device|memory'
```

> CUDA installation : https://motorscript.com/install-tensorflow-arch-linux-cuda-cudnn/


## Mac - Keyboard on VSCode

> Solution : https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode
