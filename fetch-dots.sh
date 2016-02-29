echo "Getting zshrc..."
curl https://raw.githubusercontent.com/dzotokan/dotfiles/master/zshrc > $HOME/.zshrc

echo "Getting tmux config..."
curl https://raw.githubusercontent.com/dzotokan/dotfiles/master/tmux.conf > $HOME/.tmux.conf
