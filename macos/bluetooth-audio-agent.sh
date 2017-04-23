#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U2514} increase sound quality for headphones"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
status "$?"
