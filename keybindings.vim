"split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <F2> :execute 'e ~/.vim/vim-conf/init.vim'<CR>
nnoremap <SPACE>a :Rg<SPACE>
nnoremap <SPACE>r :History<CR>
nnoremap <SPACE>b :Buffers<CR>
nnoremap <SPACE>g :GitFiles<CR>
nnoremap <SPACE>h :History:<CR>
nnoremap <SPACE>f :Files<CR>
nnoremap <LEADER>f :find<SPACE>
nnoremap <SPACE>s :source ~/.vim/sessions/
nnoremap <LEADER>s :mksession! ~/.vim/sessions/

map <C-n> :NERDTreeToggle<CR>
