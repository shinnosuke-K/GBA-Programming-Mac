#!/bin/bash

xcode-select --install 2> /dev/null

hash brew 2> /dev/null;
if [ ! $? = 0 ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew tap ArmMbed/homebrew-formulae
brew install gcc-arm-none-eabi