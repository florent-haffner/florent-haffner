sudo apt install -y htop neovim zsh zip unzip
source ~/.zshrc

ssh-keygen -t rsa -b 4096 -C "florent.haffner@protonmail.com"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -s "https://get.sdkman.io" | zsh
