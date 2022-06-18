#!/usr/bin/env bash

# Install python environment and tools.
# Update script to reference latest version before running

#python
brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper
brew install openssl readline sqlite3 xz zlib
pyenv install 3.10.4
pyenv global 3.10.4