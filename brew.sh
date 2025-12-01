#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# To install Homebrew, execute the following
#
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# To research Homebrew formulae, visit https://formulae.brew.sh

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Tap specialized repositories
#brew tap homebrew/cask-fonts
#brew tap homebrew/cask-versions
brew tap brewsci/science
brew tap mongodb/brew

# Caskroom installs we only want to dropbox once. They can't be updated
# by brew at the moment
#
#brew install homebrew/cask/brew-cask
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
brew install notion

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

# This cli is invoked using the command `parquet``
brew install parquet-cli
# An alternative commandline tool for parquet. See:-
# https://github.com/manojkarthick/pqrs
brew install manojkarthick/tap/pqrs

#brew install grafana
#brew install rsync
#brew install scala --with-docs --with-src
#brew install sbt
#brew install exercism
brew install moreutils --without-errno --without-parallel --without-ts
brew install miller
#brew install elasticsearch
#brew install kibana
brew install bat
brew install lz4
brew install csvkit
brew install jenv
brew install java
# AdoptOpenJDK has been discontinued and replaced by temurin
#brew install AdoptOpenJDK/openjdk/adoptopenjdk{8,11}
brew install --cask temurin{8,11}
brew install asciinema
brew install openapi-generator
brew install mongodb-community@4.2
brew install mongodb-database-tools
# I've been installing this via their website
# brew install homebrew/cask/docker
brew install docker-credential-helper
# local kubernetes installation
# Note, difference between using kind vs minikube is documented here:-
# https://shipit.dev/posts/minikube-vs-kind-vs-k3s.html
brew install kind
brew install minikube
brew install kubectl
brew install helm
brew install lens
brew install sshuttle
# back to your normal programming
brew install mysql
brew install mysqlworkbench
brew install adr-tools
brew install ossp-uuid
brew install mkdocs
brew install openssl
brew install zlib
brew install tcl-tk

brew install descript
brew install soundsource
brew install audio-hijack
# zight may need manual install. We want at least v1.8.2
brew install zight
brew install grammarly-desktop
#brew install jabra-direct
brew install logi-options-plus
brew install clocker
brew install discord
brew install pdf-expert
brew install jordanbaird-ice

# Installing specific version of teleport needed for RCP, and taken from 
# expedia specific tap
#brew install teleport@10.3

# Instructions for setting up and managing python:-
# https://raycent.medium.com/managing-python-on-macos-the-clean-way-7673cab874f6
brew install pyenv
brew install pyenv-virtualenv

# Add the kairosdb grafana plugin

#grafana-cli plugins install grafana-kairosdb-datasource

# Update the geoip database

#geoipupdate

# DuckDB
brew install duckdb

# Remove outdated versions from the cellar.
brew cleanup

# Add the new shell to the list of legit shells
sudo bash -c "echo /opt/homebrew/bin/bash >> /private/etc/shells"

# Change the shell for the user
chsh -s /opt/homebrew/bin/bash

# install elasticsearch X-Pack
#cd /usr/local/Cellar/elasticsearch/6.2.4/
#bin/elasticsearch-plugin install x-pack
