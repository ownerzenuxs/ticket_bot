#!/bin/bash

# Define styles
RESET="\033[0m"
GREEN="\033[1;32m"
RED="\033[1;31m"
CYAN="\033[1;36m"

# Check for Node.js and npm
if ! command -v node &>/dev/null || ! command -v npm &>/dev/null; then
  echo -e "${RED}Node.js and npm are required. Please install them before running this script.${RESET}"
  exit 1
fi

# Ensure required tools are installed
if ! command -v figlet &>/dev/null; then
  echo -e "${RED}Installing figlet for large text...${RESET}"
  sudo apt-get update && sudo apt-get install -y figlet || {
    echo -e "${RED}Failed to install figlet. Exiting.${RESET}"
    exit 1
  }
fi

# Display installation message
echo -e "${CYAN}Starting installation process...${RESET}"

# Install discord.js
echo -e "${CYAN}Installing discord.js...${RESET}"
if ! npm install discord.js; then
  echo -e "${RED}Failed to install discord.js. Exiting.${RESET}"
  exit 1
fi

# Display file copying message
echo -e "${CYAN}Copying files...${RESET}"

# Clone repository
echo -e "${CYAN}Cloning repository: TicketBot${RESET}"
if ! git ls-remote https://github.com/ownerzenuxs/TicketBot.git &>/dev/null; then
  echo -e "${RED}Repository not found. Please check the URL.${RESET}"
  exit 1
fi

if ! git clone https://github.com/ownerzenuxs/TicketBot.git; then
  echo -e "${RED}Failed to clone repository. Exiting.${RESET}"
  exit 1
fi

# Display final instruction
echo -e "${CYAN}Your bot is ready!${RESET}"
echo -e "${GREEN}Use the following command to run your bot:${RESET}"
echo -e "${RED}node bot.js${RESET}"
