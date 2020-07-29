#!/bin/sh

function getActiveApp(){
    osascript << EOF
    set _output to ""
    tell application "System Events"
        set activeApp to name of first application process whose frontmost is true
        set _output to activeApp
    end tell
    return _output
EOF
}

function reActivate(){
    local _name=$1
    osascript -- - "$_name" << EOF
    on run argv
        set activeApp to item 1 of argv
        tell application activeApp
            activate
        end tell
    end run
EOF
}


function main(){
    local _q=$@
    local _name=$(getActiveApp)
    open -a Google\ Chrome https://www.google.com/search\?q="$_q"
    reActivate $_name
}

main $@
