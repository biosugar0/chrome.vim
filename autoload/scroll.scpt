on run argv
  set _output to ""
  set operation to item 1 of argv
  set px to item 2 of argv
  tell application "Google Chrome"
    tell active tab of window 1
      if ("down" = operation) then
        execute javascript "window.scrollBy(0,"&px&");"
      else if ("up" = operation) then
        execute javascript "window.scrollBy(0,-"&px&");"
      end if
    end tell
  end tell
  return _output
end run
