function! SAlign(lineCount, column)
  let s:c = 1
  while s:c <= a:lineCount
    call feedkeys(@a . "35i ld" . a:column . "|0j")
    let s:c = s:c + 1
  endwhile
endfunction
