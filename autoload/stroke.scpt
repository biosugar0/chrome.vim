on run argv
    set _operation to item 1 of argv
    set _key to item 2 of argv
    tell application "System Events"
        set activeApp to name of first application process whose frontmost is true
    end tell

    tell application "Google Chrome"
      tell active tab of window 1
          activate
          tell application "System Events"
            delay 0.1
            if ("code" = _operation) then
                key code _key
            else if ("key" = _operation) then
                keystroke _key
            end if
          end tell
      end tell
    end tell


    tell application activeApp
        activate
    end tell
end run
