on run argv
    set _key to item 1 of argv
    tell application "System Events"
        set activeApp to name of first application process whose frontmost is true
    end tell

    tell application "Google Chrome"
      tell active tab of window 1
          activate
          tell application "System Events"
            delay 0.5
            keystroke _key
          end tell
      end tell
    end tell


    tell application activeApp
        activate
    end tell
end run
