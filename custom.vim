syntax enable
filetype on
filetype plugin on
set encoding=utf-8
set backspace=indent,eol,start
let &termencoding=&encoding
set fileencodings=utf-8,gbk

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set cindent

set number
set cursorline
set showmatch
set incsearch
set linespace=4
set t_Co=256
" set autochdir
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.meta,TAGS,GTAGS     " MacOSX/Linux
if has('gui_running')
	set background=dark
	colorscheme gruvbox
	"set guifont=Consolas:h19
	" set guifont=Menlo_Regular:h18
 	set guifont=DejaVu_Sans_Mono_for_Powerline:h16
	" au InsertEnter * hi Cursor guibg=yellow
	" au InsertLeave * hi Cursor guibg=gray
else
	set background=dark
	colorscheme desert
endif

let g:kd='~/Desktop/work/kd/kingdom/client/kingdom/assets/script/'
let g:hap='~/Desktop/work/hap/heroes_and_puzzles-client/hap/assets/Script/'
let g:hap_unity='~/Desktop/work/hap/heroes_and_puzzles_unity-client/Unity/Assets/CustomAssets/Scripts'

call AddPath(kd, hap, hap_unity)
set tags=./tags;


autocmd BufNewFile *.ts 0r ~/.vim/vim-conf/template/typescript.ts
