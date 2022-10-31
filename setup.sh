#!/bin/bash

## Colors
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

## Fetching the run script
echo "${green}[+]${white} Fetching run executable from the github repository"
wget https://raw.githubusercontent.com/proffapt/code-runner/main/run

## making the code-runner(run) executable
chmod +x ./run
echo "${green}[+]${white} Made the run script executable"

## adding run executable to bin folder
echo "${green}[+]${white} Adding run executable to your bin folder"
echo "${yellow}[~]${white} ${blue}To do that this script will be requiring your user password${green}"
sudo mv ./run /usr/local/bin/run

## the final print message
echo "${yellow}[~]${white} Now use ${cyan}run --help${white} to go to the help menu"
