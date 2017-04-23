#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

# Enable the “Are you sure you want to open this application?” dialog
msg "${U2514} enable quarantining dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool true
status "$?"
