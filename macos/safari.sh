#!/usr/bin/env bash

CWD="$( cd "$( dirname "$0" )" && pwd )"

source "$CWD/../.lib.sh"

printf "%-s\n" "${cyn}$(basename ${0%%.sh})${end}"

msg "${U251C} do not send search queries to Apple"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
status "$?"

msg "${U251C} enable Tab for highlight items on a web page"
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true
status "$?"

msg "${U251C} show full URL in the address bar"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
status "$?"

msg "${U251C} set home page to about:blank"
defaults write com.apple.Safari HomePage -string "about:blank"
status "$?"

msg "${U251C} prevent opening safe files after downloading"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
status "$?"

msg "${U251C} enable backspace key to navgate to previous page"
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true
status "$?"

msg "${U251C} hide bookmarks"
defaults write com.apple.Safari ShowFavoritesBar -bool false
status "$?"

msg "${U251C} hide sidebar in Top Sites"
defaults write com.apple.Safari ShowSidebarInTopSites -bool false
status "$?"

msg "${U251C} disable thumbnail cache for History and Top Sites"
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2
status "$?"

msg "${U251C} enable debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
status "$?"

msg "${U251C} searches match with Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
status "$?"

msg "${U251C} remove icons from bookmarks bar"
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
status "$?"

msg "${U251C} enable the Develop and Web Inspector menus"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
status "$?"

msg "${U251C} enable continuous spellchecking"
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true
status "$?"

msg "${U251C} disable auto-correct"
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
status "$?"

msg "${U251C} disable autoFill"
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false
status "$?"

msg "${U251C} warn about fraudulent websites"
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true
status "$?"

msg "${U251C} disable plug-ins"
defaults write com.apple.Safari WebKitPluginsEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false
status "$?"

msg "${U251C} disable Java"
defaults write com.apple.Safari WebKitJavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false
status "$?"

msg "${U251C} block pop-up windows"
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false
status "$?"

msg "${U251C} enable Do-Not-Track header"
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
status "$?"

msg "${U2514} update extensions automatically"
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true
status "$?"
