#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} enable webkit developer tools"
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
status "$?"

msg "${U2514} enable debug menu"
defaults write com.apple.appstore ShowDebugMenu -bool true
status "$?"
