let s:prefixes = {
      \"spec.*_spec.rb"       : "be rspec",
      \"features.*feature"    : "be cucumber"}

function! s:Prefix()
  let s:filename = expand("%")
  for s:p in keys(s:prefixes)
    if s:filename =~ s:p
      return get(s:prefixes, s:p) . " "
    endif
  endfor
  return ""
endfunction

function! YankWithPrefix()
  call system("tmux send-keys -t 'spec' '" . s:Prefix() . expand("%") . "' C-j" )
endfunction

function! YankWithPrefixAndLineNumber()
  call system("tmux send-keys -t 'spec' '" . s:Prefix() . expand("%") . ":" . line(".") . "' C-j" )
endfunction

map _ys :call YankWithPrefix()<CR>
map _yS :call YankWithPrefixAndLineNumber()<CR>
