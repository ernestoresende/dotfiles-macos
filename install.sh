#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}
Setting everything up!${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${BLUE}Installing XCode Command Line Tools...${NORMAL}\n"
eval "xcode-select --install"

# Install NVM
printf "\n${GREEN}Installing NVM...${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash"
eval "nvm install node --lts"
eval "nvm alias default node"

# Install Homebrew and its packages
eval "sh scripts/brew.sh"

# Install Oh My Zsh
printf "\n${BLUE}Installing Oh My Zsh...${NORMAL}\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

# Install fonts
eval "sh scripts/fonts.sh"

# Set up VS Code Settings and Extensions
eval "sh scripts/vscode.sh"

# Refresh ZSH config
eval "source ~/.zshrc"

printf "\n${WHITE}==============================================================================
${GREEN}All set!
${WHITE}Make sure to configure your Git and sync it with Github.
==============================================================================${NORMAL}\n"
