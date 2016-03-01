# Requires admin
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Tools
echo "Installing brew formulas..."
brew install cmake
brew install ag
brew install htop-osx
brew install tmux
brew install zsh
brew install python3
brew install autojump
brew install docker
brew install docker-machine
brew install vim --with-lua --with-clipboard
brew install heroku-toolbelt

# Install cask
brew install caskroom/cask/brew-cask

echo "Installing brew casks..."
brew cask install iterm2
brew cask install google-chrome

# oh-my-zsh
echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nvm
echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

