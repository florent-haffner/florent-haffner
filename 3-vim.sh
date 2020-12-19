#
# Plugins
#

# Must automate this

#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#
# Moved from Recursive copy to symlink
#
if [ ! -e "$HOME/.dotfiles" ]; then
	echo "Adding symlink to dotfiles at $HOME/.dotfiles"
	ln -s "$DOTFILES" ~/.dotfiles

	#cp -r $HOME/dotfiles/.config/nvim ~/.config/nvim
fi
