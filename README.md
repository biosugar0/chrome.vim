# chrome.vim
a plugin for Chrome controll

## require

* MacOS
* Vimium
* AppleScript
* bash

## example config

```
nmap ml :<C-u>ChromeStroke "L"<CR>
nmap mh :<C-u>ChromeStroke "H"<CR>
nmap mi :<C-u>ChromeStroke "i"<CR>
nmap mc :<C-u>ChromeStroke
nmap <leader>j :<C-u>ChromeDown<CR>
nmap <leader>k :<C-u>ChromeUp<CR>
nmap mx :<C-u>ChromeTabClose<CR>
"Esc
nmap me :<C-u>ChromeStrokeCode 53<CR>
let g:chromevim#scroll=200
```

## Usage

* `:Chrome query`           : search 'query' by Google Chrome
* `:ChromeStroke <key>`     : send key string to Google Chrome.
* `:ChromeStrokeCode <code>`: send key code to Google Chrome.
* `:ChromeDown`             : scroll down
* `:ChromeUp`               : scroll up
* `:ChromeTabClose`         : close active tab

