#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} require password immediately when screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
status "$?"
