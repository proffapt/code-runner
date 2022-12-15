#!/bin/bash

## Colors
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
white=$(tput setaf 7)

## removing run executable to bin folder
echo "${green}[+]${white} Removing run executable from your bin folder"
echo "${yellow}[~]${white} ${blue}To do that this script will be requiring your user password${green}"
sudo rm /usr/local/bin/run

# final print message
## the final print message
echo "${yellow}[~]${white} Uninstalled ${green}run${white} from your system!"
