scriptencoding utf-8
if exists('g:loaded_chromevim') || has('nvim') || !has('mac')
  finish
endif

let g:loaded_chromevim = 1

command! -nargs=1 Chrome call chrome#search(<f-args>)
command! -nargs=1 ChromeStroke call chrome#stroke("key",<f-args>)
command! -nargs=1 ChromeStrokeCode call chrome#stroke("code",<f-args>)
command! -nargs=0 ChromeDown call chrome#down()
command! -nargs=0 ChromeUp call chrome#up()
command! -nargs=0 ChromeTabClose call chrome#close()


nnoremap <silent> <Plug>(ChromeDown) :<C-u>ChromeDown<CR>
nnoremap <silent> <Plug>(ChromeUp) :<C-u>ChromeUp<CR>
nnoremap <silent> <Plug>(ChromeTabClose) :<C-u>ChromeTabClose<CR>
