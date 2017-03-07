#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# To install Homebrew, execute the following
#
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# To research Homebrew formulae, visit http://braumeister.org/

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Tap specialized repositories
brew tap homebrew/versions
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/science

# Caskroom installs we only want to dropbox once. They can't be updated
# by brew at the moment
#
brew install caskroom/cask/brew-cask
#brew cask install font-inconsolata
#brew cask install sublime-text
#brew cask install iterm2
#brew cask install evernote
#brew install Caskroom/cask/java
#brew cask install java7
#brew cask install 1password
#brew cask install google-chrome
#brew cask install google-chrome-canary
#brew cask install alfred
#brew cask install dropbox
#brew cask install skitch
#brew cask install rstudio
#brew cask install dbvisualizer
#brew cask install tableau
#brew install caskroom/cask/xquartz
#brew cask install rstudio
#brew cask install intellij-idea
#brew cask install caffeine
#brew cask install postman
#brew cask install slack
#brew cask install bartender
#brew cask install google-drive
#brew cask install virtualbox
#brew cask install sizeup
#brew cask install lingon-x
#brew cask install franz

# 

brew install maven
brew install ansible
brew install ant
brew install r
brew install jmeter
brew install git
brew install liquidprompt
brew install awscli
brew install aws-shell
brew install wget
brew install jq
brew install dark-mode
brew install cassandra
brew install python
brew install terraform
brew install pigz
brew install pv
brew install speedtest_cli
brew install tree
brew install curl
brew install fontconfig
brew install tldr
brew install avro-tools
brew install bash-completion
brew install geoip
brew install geoipupdate
brew install htop
brew install ponysay
brew install watch

# Update the geoip database

geoipupdate

# Remove outdated versions from the cellar.
brew cleanup
