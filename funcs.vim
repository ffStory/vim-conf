function AddPath(...)
    for path in a:000 "a:000 is the list of arguments
        execute ":set path+=".path .'**'
    endfor
endfunction

command -nargs=1 Cd :execute 'cd '<args>

"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
"   ~/.agignore 中定义忽略的文件
command! -bang -nargs=* Ag
			\ call fzf#vim#ag(<q-args>,
            \                 '--color-match "0;31" --color-path "0;33" --color-line-number "0" --ignore-case  --path-to-ignore ~/.ignore',
			\                 <bang>0 ? fzf#vim#with_preview('up:60%')
			\                         : fzf#vim#with_preview('right:50%:hidden', '?'),
			\                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
" \   'rg --column --line-number --no-heading --color=always --colors "match:fg:red" --colors "path:fg:yellow"  --smart-case '.shellescape(<q-args>), 1,
command! -bang -nargs=* Rg
			\ call fzf#vim#grep(
            \   'rg --line-number --column --color=always --ignore-case --colors "path:fg:245,128,24" --colors "match:fg:215,95,95" --colors "line:fg:253,219,178" '.shellescape(<q-args>), 1,
			\   <bang>0 ? fzf#vim#with_preview('up:60%')
			\           : fzf#vim#with_preview('right:50%:hidden', '?'),
			\   <bang>0)

command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)
