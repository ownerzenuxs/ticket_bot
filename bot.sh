#!/bin/bash

# Function to display big blue text
function big_blue_text() {
    echo -e "\e[1;34m$1\e[0m"
}

# Display "INSTALLING DEPENDENCIES" in blue and install git
big_blue_text "INSTALLING DEPENDENCIES"
sudo apt install git -y

# Display "INSTALLING NPM" in blue and install discord.js
big_blue_text "INSTALLING NPM"
npm install discord.js

# Display "COPYING FILES" in blue and clone the GitHub repository
big_blue_text "COPYING FILES"
git clone https://github.com/ownerzenuxs/TicketBot.git

# Change directory to the cloned TicketBot folder
cd TicketBot

# Display "USE COMMAND node bot.js TO RUN BOT" in blue
big_blue_text "USE COMMAND node bot.js TO RUN BOT"
