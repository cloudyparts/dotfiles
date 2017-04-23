#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} disable automatic emoji substitution"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings \
  -dict-add "automaticEmojiSubstitutionEnablediMessage" \
  -bool false
status "$?"

msg "${U251C} disable smart quotes"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings \
  -dict-add "automaticQuoteSubstitutionEnabled" \
  -bool false
status "$?"

msg "${U2514} disable continuous spell checking"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings \
  -dict-add "continuousSpellCheckingEnabled" \
  -bool false
status "$?"
