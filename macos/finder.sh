#!/usr/bin/env bash

sudo -v

CWD="$( cd "$( dirname "$0" )" && pwd )"
PLIST="${HOME}/Library/Preferences/com.apple.finder.plist"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} allow quitting via Command + Q"
defaults write com.apple.finder QuitMenuItem -bool true
status "$?"

msg "${U251C} disable window animations"
defaults write com.apple.finder DisableAllAnimations -bool true
status "$?"

msg "${U251C} set Desktop as the default location for new Finder windows"
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"
status "$?"

msg "${U251C} show icons for external drives on desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
status "$?"

msg "${U251C} show icons for hard drives on desktop"
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
status "$?"

msg "${U251C} show icons for mounted servers on desktop"
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
status "$?"

msg "${U251C} show icons for removable media on desktop"
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
status "$?"

msg "${U251C} hide hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool false
status "$?"

msg "${U251C} show status bar"
defaults write com.apple.finder ShowStatusBar -bool true
status "$?"

msg "${U251C} show path bar"
defaults write com.apple.finder ShowPathbar -bool true
status "$?"

msg "${U251C} display full POSIX path as window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
status "$?"

msg "${U251C} keep folders on top when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
status "$?"

msg "${U251C} current folder is default location when searching"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
status "$?"

msg "${U251C} disable warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
status "$?"

msg "${U251C} open a new Finder window when volume is mounted"
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
status "$?"

# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
msg "${U251C} make list view the default view for all Finder windows"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
status "$?"

msg "${U251C} hide item info near icons on the destkop"
${PLBUDY} -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo false" "${PLIST}"
status "$?"

msg "${U251C} show item info near icons for standard views"
${PLBUDY} -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" "${PLIST}"
${PLBUDY} -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" "${PLIST}"
status "$?"

msg "${U251C} sort icons on desktop by dateModified"
${PLBUDY} -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy dateModified" "${PLIST}"
status "$?"

msg "${U251C} snap-to-grid for icons in standard views"
${PLBUDY} -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" "${PLIST}"
${PLBUDY} -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" "${PLIST}"
status "$?"

msg "${U251C} increase grid spacing for icons"
${PLBUDY} -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 50" "${PLIST}"
${PLBUDY} -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 50" "${PLIST}" 
${PLBUDY} -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 50" "${PLIST}"
status "$?"

msg "${U251C} set the size of icons"
${PLBUDY} -c "Set :DesktopViewSettings:IconViewSettings:iconSize 48" "${PLIST}"
${PLBUDY} -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 48" "${PLIST}"
${PLBUDY} -c "Set :StandardViewSettings:IconViewSettings:iconSize 48" "${PLIST}"
status "$?"

msg "${U251C} configure default pane expansion for File Info dialog"
defaults write com.apple.finder FXInfoPanesExpanded -dict \
    General -bool true \
    OpenWith -bool true \
    Privileges -bool true
status "$?"

msg "${U251C} do not hide the ~/Library folder"
sudo ${CHFLAGS} nohidden "$HOME/Library"
status "$?"

msg "${U2514} do not hide the ~/Volumes folder"
sudo ${CHFLAGS} nohidden "/Volumes"
status "$?"
