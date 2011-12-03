function! yankstack#setup()
  if exists('g:yankstack_did_setup') | return | endif
  let g:yank_list_did_mappings = 1
  for key in ['x', 'y', 'd', 'c', 'X', 'Y', 'D', 'C', 'p', 'P']
    exec 'nmap' key '<Plug>yankstack_' . key
    exec 'xmap' key '<Plug>yankstack_' . key
  endfor
endfunction
