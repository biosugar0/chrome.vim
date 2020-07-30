# chrome.vim
chrome controller for vim

## require

* Vimium
* AppleScript
* bash

# example config

```
nmap ml :<C-u>ChromeStroke "L"<CR>
nmap mh :<C-u>ChromeStroke "H"<CR>
nmap mi :<C-u>ChromeStroke "i"<CR>
nmap mc :<C-u>ChromeStroke
nmap mj :<C-u>ChromeDown<CR>
nmap mk :<C-u>ChromeUp<CR>
nmap mx :<C-u>ChromeTabClose<CR>
"Esc
nmap me :<C-u>ChromeStrokeCode 53<CR>
let g:chromevim#scroll=200
```
