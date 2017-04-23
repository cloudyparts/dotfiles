#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} disable Photos from opening when devices are plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
status "$?"
