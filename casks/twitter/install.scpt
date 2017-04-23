#!/usr/bin/env osascript
tell application "System Events" to tell process "App Store"
	open location "macappstore://geo.itunes.apple.com/us/app/twitter/id409789998?mt=12"
	activate
	delay 10
	set frontmost to true
	key code 48
	delay 2
	key code 36
end tell
