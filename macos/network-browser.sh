#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} enable AirDrop over ethernet"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
status "$?"
