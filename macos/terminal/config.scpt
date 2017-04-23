tell application "Terminal"

   local allOpenedWindows
   local initialOpenedWindows
   local windowID
   set themeName to "Solarized-Dark-xterm-256color"

   tell application "Finder" to set current_path to POSIX path of (container of (path to me) as text)

   (* Store the IDs of all the open terminal windows. *)
   set initialOpenedWindows to id of every window

   (* Open the custom theme so that it gets added to the list
      of available terminal themes (note: this will open two
      additional terminal windows). *)
   do shell script "open '" & current_path & themeName & ".terminal'"

   (* Wait a little bit to ensure that the custom theme is added. *)
   delay 1

   (* Set the custom theme as the default terminal theme. *)
   set default settings to settings set themeName

   (* Get the IDs of all the currently opened terminal windows. *)
   set allOpenedWindows to id of every window

   repeat with windowID in allOpenedWindows

      (* Close the additional windows that were opened in order
         to add the custom theme to the list of terminal themes. *)

      if initialOpenedWindows does not contain windowID then
         close (every window whose id is windowID)
      end if
   end repeat
end tell
