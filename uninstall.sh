#!/bin/bash

## Colors
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

## adding run executable to bin folder
echo "${green}[+]${white} Removing run executable from your bin folder"
echo "${yellow}[~]${white} ${blue}To do that this script will be requiring your user password${green}"
sudo rm /usr/local/bin/run

## the final print message
echo "${yellow}[~]${white} Delete this folder to remove the existence of ${cyan}run${white} from your system"
