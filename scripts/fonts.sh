NORMAL="\033[0;39m"
GREEN="\033[32m"

# Install fonts
printf "${GREEN}Installing fonts...${NORMAL}\n\n"
eval "cp ./fonts/**/*.{otf,ttf} ~/Library/Fonts/"
