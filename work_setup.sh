#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/tom/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew tap stax-labs/homebrew-taps
brew install stax2aws

