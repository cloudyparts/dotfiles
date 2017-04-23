#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} enable automatic checking for updates"
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
status "$?"

msg "${U251C} check for software updates daily"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
status "$?"

msg "${U251C} download newly available updates in background"
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
status "$?"

msg "${U2514} install system data files & security updates"
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
status "$?"
