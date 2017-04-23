#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} save screenshots to the desktop"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
status "$?"

msg "${U251C} save screenshots in PNG format"
defaults write com.apple.screencapture type -string "png"
status "$?"

msg "${U2514} disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true
status "$?"
