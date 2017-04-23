#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

# allows keeping widgets on the desktop
msg "${U251C} enable dashboard dev mode"
defaults write com.apple.dashboard devmode -bool true
status "$?"

msg "${U2514} disable dashboard"
defaults write com.apple.dashboard mcx-disabled -bool true
status "$?"
