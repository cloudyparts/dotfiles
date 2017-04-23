#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} enable app auto-update"
defaults write com.apple.commerce AutoUpdate -bool true
status "$?"
