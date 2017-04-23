#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} disable send and reply animations"
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
status "$?"

msg "${U251C} exclude name when copying email addresses"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
status "$?"

msg "${U251C} create Command + Enter shortut to send email"
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\U21a9"
status "$?"

msg "${U251C} display emails in threaded mode"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
status "$?"
  
msg "${U251C} sort email by date (oldest at the top)"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"
status "$?"

msg "${U251C} disable inline attachments"
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true
status "$?"

msg "${U2514} disable automatic spell checking"
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"
status "$?"
