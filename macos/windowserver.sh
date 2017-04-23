#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} enable HiDPI display modes"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
status "$?"
