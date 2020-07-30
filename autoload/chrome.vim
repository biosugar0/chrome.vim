let s:script = expand('<sfile>')
let s:scriptdir = fnamemodify(s:script, ':p:h')
let s:result = []

function! chrome#search(word) abort
  echo "run google search..."
  let cmd = 'bash '. s:scriptdir . "/open.sh " . a:word
  let s:result = []
  call job_start(cmd, {
        \ "out_cb": function("s:cmd_out"),
        \ "err_cb": function("s:cmd_out"),
        \ "exit_cb":function("s:cmd_exit"),
        \})
  return
endfunction

function! chrome#stroke(word) abort
  let cmd = 'osascript '. s:scriptdir . "/stroke.scpt " . a:word
  let s:result = []
  call job_start(cmd, {
        \ "out_cb": function("s:cmd_out"),
        \ "err_cb": function("s:cmd_out"),
        \ "exit_cb":function("s:cmd_exit"),
        \})
  return
endfunction

function! chrome#close() abort
  let cmd = 'osascript '. s:scriptdir . "/close.scpt"
  let s:result = []
  call job_start(cmd, {
        \ "out_cb": function("s:cmd_out"),
        \ "err_cb": function("s:cmd_out"),
        \ "exit_cb":function("s:cmd_exit"),
        \})
  return
endfunction

function! chrome#down() abort
  let cmd = 'osascript '. s:scriptdir . "/scroll.scpt down " . get(g:, 'chromevim#scroll', 100)
  let s:result = []
  call job_start(cmd, {
        \ "out_cb": function("s:cmd_out"),
        \ "err_cb": function("s:cmd_out"),
        \ "exit_cb":function("s:cmd_exit"),
        \})
  return
endfunction

function! chrome#up() abort
  let cmd = 'osascript '. s:scriptdir . "/scroll.scpt up " . get(g:, 'chromevim#scroll', 100)
  let s:result = []
  call job_start(cmd, {
        \ "out_cb": function("s:cmd_out"),
        \ "err_cb": function("s:cmd_out"),
        \ "exit_cb":function("s:cmd_exit"),
        \})
  return
endfunction

function! s:cmd_out(ch, msg) abort
  if !empty(a:msg)
      call add(s:result, a:msg)
  endif
endfunction

function! s:cmd_exit(job, status) abort
  if !empty(s:result)
      call s:echo_err(s:result[0])
      return
  endif
  echo ""
endfunction

function! s:echo_err(msg) abort
  echohl ErrorMsg
  echom "[chrome.vim]" a:msg
  echohl None
endfunction
