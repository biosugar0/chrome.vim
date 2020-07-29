let s:script = expand('<sfile>')
let s:scriptdir = fnamemodify(s:script, ':p:h')

function! chrome#search(word) abort
  echo "run google search..."
  let cmd = 'bash '. s:scriptdir . "/open.sh " . a:word
  let s:result = []
  call job_start(cmd, {
        \ "err_cb": function("s:cmd_out"),
        \ "exit_cb":function("s:cmd_exit"),
        \})
  return
endfunction

function! s:cmd_out(ch, msg) abort
  call add(s:result, a:msg)
endfunction

function! s:cmd_exit(job, status) abort
  echo ""
endfunction
