#!/bin/bash

# Define styles
RESET="\033[0m"
GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"

# Ensure required tools are installed (figlet for big text)
if ! command -v figlet &> /dev/null; then
  echo -e "${RED}Installing figlet for large text...${RESET}"
  sudo apt-get update && sudo apt-get install -y figlet
fi

# Display logo
echo -e "${CYAN}"
figlet "TICKET BOT"
echo -e "${RESET}"

# Display "INSTALLING" in big green text
echo -e "${GREEN}"
figlet "INSTALLING"
echo -e "${RESET}"

# Run the first command
echo -e "${CYAN}Running command: npm install discord.js${RESET}"
npm install discord.js

# Display "COPYING FILES" in big green text
echo -e "${GREEN}"
figlet "COPYING FILES"
echo -e "${RESET}"

# Run the second command
echo -e "${CYAN}Running command: git clone https://github.com/ownerzenuxs/ticket_bot.git${RESET}"
neofetch

# Display the final instruction in big red text
echo -e "${RED}"
figlet "USE COMMAND"
figlet "- node bot.js -"
echo -e "${RESET}"

# End message
echo -e "${CYAN}Your bot is ready! Use 'node bot.js' to run the bot.${RESET}"
