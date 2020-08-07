#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
brew install mas
brew install ffmpeg

echo Allowing insecure curl requests
echo insecure >> ~/.curlrc
HOMEBREW_CURLRC=1
export HOMEBREW_CURLRC

# 937984704      - Amphetamine
# 441258766      - Magnet
# 425424353      - The Unarchiver
# 634148309      - Logic Pro X

xcode-select --install
brew cask install spotify
brew cask install teamviewer
brew cask install microsoft-edge
brew cask install microsoft-office
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask-versions/master/Casks/tunnelblick-beta.rb

mas install 937984704
mas install 441258766
mas install 425424353

echo Reverting curl security policy
rm ~/.curlrc
