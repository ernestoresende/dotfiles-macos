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

# Copy ZSH config
printf "${YELLOW}Copying ZSH config into ~/.zshrc...${NORMAL}\n"
eval "cp ./zshrc ~/.zshrc"

# Install fonts
eval "sh scripts/fonts.sh"

# Set up VS Code Settings and Extensions
eval "sh scripts/vscode.sh"

# Add global NPM packages
printf "\n${GREEN}Installing global npm packages for GatsbyCLI${NORMAL}\n"
eval "npm install -g gatsby-cli"

# Refresh ZSH config
eval "source ~/.zshrc"

# Open links for apps that can't be downloaded via brew cask
printf "\n${BLUE}Opening links for apps to download...${NORMAL}\n"

# =========================
# Put here all the programs you cannot download with "brew cask install"

# Productivity
eval "open https://www.google.com/intl/pt-BR_ALL/drive/download/backup-and-sync/"

printf "\n${WHITE}==============================================================================
${GREEN}All set!
${WHITE}Make sure to configure yout Git and sync it with Github.
==============================================================================${NORMAL}\n"
