#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"
LWT="     *** WARNING ***\rTHIS IS A PRIVATE COMPUTER SYSTEM.\r      !!! AUTHORIZED USE ONLY !!!"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} reveal system info by clicking clock in the login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
status "$?"

msg "${U251C} disable guest login"
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
status "$?"

#msg "${U2514} set login window text"
#sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText -string "${LWT}"
#status "$?"
