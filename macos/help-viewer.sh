#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} set non-floating windows for help viewer"
defaults write com.apple.helpviewer DevMode -bool true
status "$?"
