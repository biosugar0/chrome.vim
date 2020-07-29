scriptencoding utf-8
if exists('g:loaded_chromevim') || has('nvim')
  finish
endif

let g:loaded_chromevim = 1
command! -nargs=1 Chrome call chrome#search(<f-args>)
