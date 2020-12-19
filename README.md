# Dotfiles

This is my current $HOME configuration.

> The shell script are used to fastly get an environment up and running.

## Git

`git config --global user.email "florent.haffner@protonmail.com" && git config --global user.name "florent-haffner"`

## Network

> Local `ip route get 1.2.3.4 | awk '{print $7}'`

> External `curl ifconfig.me`

## GPU

Infos : https://askubuntu.com/questions/5417/how-to-get-the-gpu-info

`glxinfo | egrep -i 'device|memory'`

CUDA installation : https://leblancfg.com/installing-cuda-cudnn-tensorflow-nvidia-gtx960.html

## Mac - Keyboard on VSCode

Solution : https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode
