##
## SSH
##
ssh-keygen -t rsa -b 4096 -C "florent.haffner@protonmail.com"


#
# ZSH
#
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
