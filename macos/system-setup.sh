#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} enable auto restart if the computer freezes"
sudo systemsetup -setrestartfreeze on
status "$?"

msg "${U251C} disable sleep mode"
sudo systemsetup -setcomputersleep Off > /dev/null
status "$?"

# see `sudo systemsetup -listtimezones` for other values
msg "${U2514} set the timezone"
sudo systemsetup -settimezone "America/Los_Angeles" > /dev/null
status "$?"
