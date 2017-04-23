#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} show main window when launching"
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
status "$?"

msg "${U251C} show cpu usage meter as dock icon"
defaults write com.apple.ActivityMonitor IconType -int 5
status "$?"

msg "${U251C} show all processes"
defaults write com.apple.ActivityMonitor ShowCategory -int 0
status "$?"

msg "${U2514} sort results by CPU usage"
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0
status "$?"
