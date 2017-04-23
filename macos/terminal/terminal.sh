#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} only use UTF-8"
defaults write com.apple.Terminal StringEncodings -array 4
status "$?"

# https://security.stackexchange.com/a/47786/8918
msg "${U251C} enable secure keyboard entry"
defaults write com.apple.terminal SecureKeyboardEntry -bool true
status "$?"

msg "${U251C} disable line marks"
defaults write com.apple.Terminal ShowLineMarks -int 0
status "$?"

msg "${U2514} install default profile"
$OSASCRIPT ./config.scpt >> $LOG 2>&1
sleep 5s
status "$?"
