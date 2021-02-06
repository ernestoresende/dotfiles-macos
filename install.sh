#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}
Setting everything up. Sit down and grab a cup of tea, this could take some time...${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${BLUE}Installing XCode Command Line Tools...${NORMAL}\n"
eval "xcode-select --install"

# Install NVM
printf "\n${GREEN}Installing NVM...${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash"
eval "nvm install node --lts"
eval "nvm alias default node"

# Install Homebrew and its packages
eval "sh scripts/brew.sh"

# Auto-configure git credentials
eval "sh scripts/gitconfig.sh"

printf "\n${WHITE}==============================================================================
${GREEN}All set!
${WHITE}Make sure to configure your Git using the gitconfig script.
==============================================================================${NORMAL}\n"
