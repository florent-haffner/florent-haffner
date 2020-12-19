#!/usr/bin/env bash

SYSTEM="$(uname -s)"

DOTFILES="$(pwd)"
COLOR_GRAY="\033[1;38;5;243m"
COLOR_BLUE="\033[1;34m"
COLOR_GREEN="\033[1;32m"
COLOR_RED="\033[1;31m"
COLOR_PURPLE="\033[1;35m"
COLOR_YELLOW="\033[1;33m"
COLOR_NONE="\033[0m"

title() {
    echo -e "\n${COLOR_PURPLE}$1${COLOR_NONE}"
    echo -e "${COLOR_GRAY}==============================${COLOR_NONE}\n"
}


check_system() {
	# Check for Homebrew and install if we don't have it
	if [ $SYSTEM == 'Darwin' ]; then
	    title "Hi from MacOS"

	    #/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	fi
	if [ $SYSTEM == 'Linux' ]; then
	    # Ubuntu/deb
	    #sudo apt update && sudo apt upgrade -y && sudo apt install -y htop neovim zsh zip unzip

	    # Manjaro/Arch
	    #sudo pacman -S htop neovim zsh zip unzip neofetch

	    title "Hi from Linux"
	fi
}


#
## FOUND THIS ON THE INTERNET
#
setup_homebrew() {
    title "Setting up Homebrew"

}

case "$1" in
	check)
		check_system
		;;
	setup)
		setup_homebrew
		;;
	*)
		echo -e $"\nUsage: $(basename "$0") {check|setup}\n"
		exit 1
		;;
esac
echo -e


