#!/bin/bash

## Colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
orange=$(tput setaf 9)

## funcs
_EXIT_() {
	echo -e "${red}[!] ${white}Exitting the tool..${white}"
	echo
	exit 0
}

## vars
SHELL_NAME=$(echo "$SHELL")
SHELL_TYPE=${SHELL_NAME##*/}
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

## shellcheck
if [[ $SHELL_TYPE == fish ]]; then
	SHELL_file=~/.config/fish/config.fish
elif [[ $SHELL_TYPE == bash ]]; then
	SHELL_file=~/.bashrc
elif [[ $SHELL_TYPE == zsh ]]; then
	SHELL_file=~/.zshrc
elif [[ $SHELL_TYPE == tcsh ]]; then
	SHELL_file=~/.tcshrc
elif [[ $SHELL_TYPE == sh ]]; then
	SHELL_file=~/.profile
elif [[ $SHELL_TYPE == csh ]]; then
	SHELL_file=~/.cshrc
elif [[ $SHELL_TYPE == ksh ]]; then
	SHELL_file=~/.kshrc
else
	echo -e "${red}ERROR${white}: You are using unsupported shell type! - '${orange}$SHELL_TYPE${white}'"
	_EXIT_
fi
echo "${green}[+]${white} Good to see you using $SHELL_TYPE"

## making the code-runner executable
chmod +x crunner
echo "${green}[+]${white} Made the crunner script executable"

## adding alias to shell config file
echo "alias run='$SCRIPT_DIR/crunner'" >>"$SHELL_file"
echo "${green}[+]${white} Added alias to your $SHELL_TYPE config file"

## sourcing the config file
echo "${green}[+]${white} Sourcing your $SHELL_TYPE config file"
echo "${green}[~]${white} DONE"

## the final print message
echo "${yellow}[~]${white} Now use ${cyan}run --help${white} to go to the help menu"
"$SHELL_TYPE"
source "$SHELL_file"
exit 0
