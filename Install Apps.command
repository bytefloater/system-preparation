#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
brew install mas
brew install ffmpeg

echo Allowing insecure curl requests
echo insecure >> ~/.curlrc
HOMEBREW_CURLRC=1
export HOMEBREW_CURLRC

# 1295203466     - Microsoft Remote Desktop
# 1037126344     - Apple Configurator 2
# 464787055      - Pitch, Please!
# 824880320      - forScore Cue
# 466661976      - Beat Keeper
# 939749973      - TuneWave
# 497799835      - Xcode
# 937984704      - Amphetamine
# 441258766      - Magnet
# 425424353      - The Unarchiver
# 634148309      - Logic Pro X

xcode-select --install
brew cask install spotify
brew cask install teamviewer
brew cask install microsoft-edge
brew cask install https://gist.githubusercontent.com/varenc/f7f0afc32af0f8062ae727e4415326c6/raw/2009a281d927c0efbb179fdcbfea0b2d602e7bed/audacity.rb
brew cask install vlc
brew cask install windscribe
brew cask install macs-fan-control
brew cask install balenaetcher
brew cask install midi-monitor
brew cask install paragon-extfs
brew cask install paragon-ntfs
brew cask install parsec
brew cask install microsoft-office
brew cask install softube-central
brew cask install ilok-license-manager
brew cask install openvpn-connect
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask-versions/master/Casks/tunnelblick-beta.rb
brew cask install angry-ip-scanner

mas install 1295203466
mas install 1037126344
mas install 464787055
mas install 824880320
mas install 466661976
mas install 939749973
mas install 497799835
mas install 937984704
mas install 441258766
mas install 425424353
# mas install 634148309

echo Reverting curl security policy
rm ~/.curlrc
