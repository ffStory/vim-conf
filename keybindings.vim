"split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <F2> :execute 'e ~/.vim/vim-conf/'<CR>
nnoremap <F3> :execute 'Startify'<CR>
nnoremap <SPACE>a :Ag
nnoremap <SPACE>r :History<CR>
nnoremap <SPACE>b :Buffers<CR>
nnoremap <SPACE>g :GitFiles<CR>
nnoremap <SPACE>h :History:<CR>
nnoremap <SPACE>f :Files<CR>
nnoremap <LEADER>f :find

map <C-n> :NERDTreeToggle<CR>
nnoremap <c-i> :ALEGoToDefinition<CR>
nnoremap <c-\> :ALEFindReferences<CR>
