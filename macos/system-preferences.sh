#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} disable resume system-wide"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
status "$?"
