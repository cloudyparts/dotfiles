#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} do not use new drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
status "$?"

msg "${U2514} disable local backups"
hash tmutil &> /dev/null && sudo tmutil disablelocal
status "$?"
