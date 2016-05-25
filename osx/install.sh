# Requires admin
echo "---> [INSTALL] Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Tools
echo "---> [INSTALL] Installing brew formulaes..."
brew install cmake
brew install tree
brew install ag
brew install ctags
brew install htop-osx
brew install tmux
brew install tmux-mem-cpu-load
brew install zsh
brew install python3
brew install autojump
brew install nginx
brew install docker
brew install docker-machine
brew install vim --with-lua --with-clipboard
brew install heroku-toolbelt
brew install haskell-stack
brew install sbt
brew install awscli
brew install jq

echo "---> [INSTALL] Installing brew cask..."
brew install caskroom/cask/brew-cask

echo "---> [INSTALL] Installing brew cask packages..."
brew cask install iterm2
brew cask install google-chrome

