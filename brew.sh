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
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap brewsci/science
brew tap mongodb/brew

# Caskroom installs we only want to dropbox once. They can't be updated
# by brew at the moment
#
brew install homebrew/cask/brew-cask
brew install font-inconsolata
brew install sublime-text
brew install iterm2
brew install evernote
brew install 1password
brew install google-chrome
#brew install google-chrome-canary
brew install alfred
brew install dropbox
#brew install skitch
#brew install rstudio
#brew install dbvisualizer
brew install homebrew/cask/xquartz
brew install intellij-idea
brew install postman
#brew install slack
brew install bartender
#brew install google-drive-file-stream
brew install sizeup
brew install lingon-x
#brew install franz
#brew install devcenter
#brew install kitematic
#brew install anaconda
brew install bettertouchtool
brew install beyond-compare
#brew install pycharm-ce
#brew install fivedetails-flow
#brew install mactex
brew install cloudapp
#brew install monodraw
brew install graphiql
brew install cisco-proximity
brew install graphql-playground
brew install flycut
brew install fantastical
brew install polycom-content
#brew install webex-meetings
#brew install datgrip
#brew install zoom
brew install descript

brew install maven
#brew install ansible
#brew install ant
#brew install r
brew install jmeter
brew install git
brew install liquidprompt
brew install awscli
brew install aws-shell
brew install wget
brew install jq
#brew install dark-mode
#brew install cassandra
brew install python
brew install terraform
brew install terraform@0.11
brew install pigz
brew install pv
brew install speedtest_cli
brew install tree
brew install curl
brew install fontconfig
brew install tldr
brew install avro-tools
brew install bash
brew install bash-completion@2
#brew install geoip
#brew install geoipupdate
brew install htop
#brew install ponysay
brew install watch
brew install parquet-cli
#brew install grafana
#brew install rsync
#brew install scala --with-docs --with-src
#brew install sbt
#brew install exercism
brew install moreutils --without-errno --without-parallel --without-ts
brew install miller
#brew install elasticsearch
#brew install kibana
brew install teleport
brew install bat
brew install lz4
brew install csvkit
brew install jenv
brew install java
brew install AdoptOpenJDK/openjdk/adoptopenjdk{8,11}
brew install asciinema
brew install openapi-generator
brew install mongodb-community@4.2
brew install mongodb-database-tools
brew install docker-credential-helper
brew install minikube
brew install kubectl
brew install helm
brew install lens
brew install sshuttle
brew install mysql
brew install mysqlworkbench
brew install adr-tools
brew install ossp-uuid

# Add the kairosdb grafana plugin

#grafana-cli plugins install grafana-kairosdb-datasource

# Update the geoip database

#geoipupdate

# Remove outdated versions from the cellar.
brew cleanup

# Add the new shell to the list of legit shells
sudo bash -c "echo /opt/homebrew/bin/bash >> /private/etc/shells"

# Change the shell for the user
chsh -s /opt/homebrew/bin/bash

# install elasticsearch X-Pack
#cd /usr/local/Cellar/elasticsearch/6.2.4/
#bin/elasticsearch-plugin install x-pack
