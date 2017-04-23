#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} make green the system highlight color"
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"
status "$?"

msg "${U251C} make sidebar icon size small"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
status "$?"

msg "${U251C} always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
status "$?"

msg "${U251C} increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
status "$?"

msg "${U251C} expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
status "$?"

msg "${U251C} expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
status "$?"

msg "${U251C} save new files to disk not iCloud"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
status "$?"

msg "${U251C} show ascii control chars in standard text views"
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
status "$?"

msg "${U251C} disable automatic termination of inactive apps"
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
status "$?"

msg "${U251C} disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
status "$?"

msg "${U251C} disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
status "$?"

# tabs should work in modal dialogs
msg "${U251C} enable full keyboard access for all controls"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
status "$?"

msg "${U251C} disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
status "$?"

msg "${U251C} increase keyboard repeat rate speed"
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 10
status "$?"

msg "${U251C} set language and text formats"
defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true
status "$?"

msg "${U251C} disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
status "$?"

msg "${U251C} enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2
status "$?"

msg "${U251C} show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
status "$?"

msg "${U251C} enable spring loading for directories"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
defaults write NSGlobalDomain com.apple.springing.delay -float 0
status "$?"

msg "${U2514} show web inspector in context menu"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
status "$?"
