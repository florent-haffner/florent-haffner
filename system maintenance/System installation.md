# System installation

## Base

Manjaro - /w proprietary driver


## Procedure

    # ohmyzsh -> https://ohmyz.sh/
    
    sudo pacman -Syu yay htop nvtop vim tilix nautilus fakeroot
    
    # Install miniconda
    # Cat .bashrc -> .zshrc
    
    yay -Syu ulauncher plank jetbrains-toolbox spotify signal discord code


### Git

    ssh-keygen -t rsa -b 4096 -C "florent.haffner@protonmail.com"
    
    git config --global user.email "florent.haffner@protonmail.com" && git config --global user.name "florent-haffner"

    export EDITOR=vim

### Virtualization
    
    sudo pacmans -S docker docker-compose
    
    sudo usermod -aG docker $USER

## Fonts & emoji
- Fonts -> `yay -Syu noto-fonts`
- [Apple emoji](https://aur.archlinux.org/packages/ttf-apple-emoji)
