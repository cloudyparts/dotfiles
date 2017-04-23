#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} set icon size to 36 pixels"
defaults write com.apple.dock tilesize -int 36
status "$?"

msg "${U251C} scale windows when minimize/maximize"
defaults write com.apple.dock mineffect -string "scale"
status "$?"

msg "${U251C} minimize windows into their app icon"
defaults write com.apple.dock minimize-to-application -bool true
status "$?"

msg "${U251C} enable spring loading for all items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
status "$?"

msg "${U251C} show process indicators for open applications"
defaults write com.apple.dock show-process-indicators -bool true
status "$?"

msg "${U251C} do not animate opening applications"
defaults write com.apple.dock launchanim -bool false
status "$?"

msg "${U251C} speed up Mission Control animations"
defaults write com.apple.dock expose-animation-duration -float 0.1
status "$?"

msg "${U251C} do not group windows by app in Mission Control"
defaults write com.apple.dock expose-group-by-app -bool false
status "$?"

msg "${U251C} do not show Dashboard as a Space"
defaults write com.apple.dock dashboard-in-overlay -bool true
status "$?"

msg "${U251C} do not rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false
status "$?"

msg "${U251C} remove the auto-hiding delay"
defaults write com.apple.dock autohide-delay -float 0
status "$?"

msg "${U251C} remove animation when hiding/showing"
defaults write com.apple.dock autohide-time-modifier -float 0
status "$?"

msg "${U251C} enable auto hide/show"
defaults write com.apple.dock autohide -bool true
status "$?"

msg "${U251C} make hidden app icons translucent"
defaults write com.apple.dock showhidden -bool true
status "$?"

msg "${U251C} top left corner = Mission Control"
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
status "$?"

msg "${U251C} top right corner = Desktop"
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
status "$?"

msg "${U2514} bottom right corner = Screen saver"
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0
status "$?"
