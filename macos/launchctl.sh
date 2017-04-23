#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} disable Notification Center"
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist >> $LOG 2>&1 
status "$?"

msg "${U2514} enable locatedb daemon"
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist >> $LOG 2>&1
status "$?"
