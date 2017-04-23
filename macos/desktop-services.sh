#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} do not write .DS_Store on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
status "$?"

msg "${U2514} do not write .DS_Store on USB volumes"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
status "$?"
