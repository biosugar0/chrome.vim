scriptencoding utf-8
if exists('g:loaded_chromevim') || has('nvim')
  finish
endif

let g:loaded_chromevim = 1
let g:chromevim#scroll = 100
command! -nargs=1 Chrome call chrome#search(<f-args>)
command! -nargs=0 ChromeDown call chrome#down()
command! -nargs=0 ChromeUp call chrome#up()
command! -nargs=0 ChromeTabClose call chrome#close()


nnoremap <silent> <Plug>(ChromeDown) :<C-u>ChromeDown<CR>
nnoremap <silent> <Plug>(ChromeUp) :<C-u>ChromeUp<CR>
nnoremap <silent> <Plug>(ChromeTabClose) :<C-u>ChromeTabClose<CR>