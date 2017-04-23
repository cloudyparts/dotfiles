#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} set standby delay to 24 hours"
sudo pmset -a standbydelay 86400 >> $LOG 2>&1
status "$?"

msg "${U251C} disable hibernation"
sudo pmset -a hibernatemode 0 >> $LOG 2>&1
status "$?"

# not required for ssd/flash storage
msg "${U2514} disable sudden motion sensor"
sudo pmset -a sms 0 >> $LOG 2>&1
status "$?"
