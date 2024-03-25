let s:fontsize = 12
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Hack Nerd Font Mono:h" . s:fontsize
endfunction

noremap <C-+> :call AdjustFontSize(1)<CR>
noremap <C-_> :call AdjustFontSize(-1)<CR>
