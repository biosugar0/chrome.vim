# chrome.vim
a plugin for Chrome controll

## require

* MacOS
* Vimium
* AppleScript
* bash

This plugin use Apple script to send key to chrome.
So the following settings are required.

System Preferences, click Privacy, click Accessibility, then select the app’s tick box.

## example config

[vim-submode](https://github.com/kana/vim-submode)
It's useful to set up chrome.vim and vim-submode to work together.

```
nmap mc  :<C-u>ChromeStroke
let g:chromevim#scroll=200


let g:submode_timeout=v:false

" scroll down and enter chromectl mode.
call submode#enter_with('chromectl', 'n', 'r', '<leader>j', '<Plug>(ChromeDown)')
" scroll up and enter chromectl mode.
call submode#enter_with('chromectl', 'n', 'r', '<leader>k', '<Plug>(ChromeUp)')
" close current tab and enter chromectl mode.
call submode#enter_with('chromectl', 'n', 'r', '<leader>x', '<Plug>(ChromeTabClose)')
"

" in chromectl mode{{{
" scroll down
call submode#map('chromectl', 'n', 'r', 'j', '<Plug>(ChromeDown)')
" scroll up
call submode#map('chromectl', 'n', 'r', 'k', '<Plug>(ChromeUp)')
" close current tab
call submode#map('chromectl', 'n', 'r', 'x', '<Plug>(ChromeTabClose)')
" Open a link in the current tab by Vimium
call submode#map('chromectl', 'n', 'r', 'i', ':<C-u>ChromeStroke "i"<CR>')
" Go one tab left by Vimium
call submode#map('chromectl', 'n', 'r', 'H', ':<C-u>ChromeStroke "H"<CR>')
" Go one tab right by Vimium
call submode#map('chromectl', 'n', 'r', 'L', ':<C-u>ChromeStroke "L"<CR>')
" Go forward in history by Vimium
call submode#map('chromectl', 'n', 'r', 'l', ':<C-u>ChromeStroke "l"<CR>')
" Go back in history by Vimium
call submode#map('chromectl', 'n', 'r', 'h', ':<C-u>ChromeStroke "h"<CR>')
" enter caret mode for Visual mode by Vimium
call submode#map('chromectl', 'n', 'r', 'c', ':<C-u>ChromeStroke "vc"<CR>')
" Visual mode by Vimium
call submode#map('chromectl', 'n', 'r', 'v', ':<C-u>ChromeStroke "v"<CR>')
" send Esc by Vimium
call submode#map('chromectl', 'n', 'r', 'E', ':<C-u>ChromeStrokeCode 53<CR>')
" send Enter by Vimium
call submode#map('chromectl', 'n', 'r', 'e', ':<C-u>ChromeStrokeCode 76<CR>')
"}}}
```

## Usage

* `:Chrome query`           : search 'query' by Google Chrome
* `:ChromeStroke <key>`     : send key string to Google Chrome.
* `:ChromeStrokeCode <code>`: send key code to Google Chrome.
* `:ChromeDown`             : scroll down
* `:ChromeUp`               : scroll up
* `:ChromeTabClose`         : close active tab

