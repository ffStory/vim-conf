" 语法高亮
syntax enable
" 文件类型检测
filetype on
" 插件文件检测
" filetype plugin on
" 不兼容模式
set nocompatible
" vim字符编码方式
set encoding=utf-8
" 文件字符编码判断列表
set fileencodings=utf-8,gbk

" 定义tab等同的空格长度
set tabstop=4
set shiftwidth=4
set softtabstop=4
" 输入tab建时，自动转为空格
set expandtab

set autoindent
set smartindent
set cindent
set backspace=indent,eol,start

set number
set cursorline
set showmatch
" 边搜索边标记
set incsearch
set linespace=4
" 自动切换目录
set autochdir
set background=dark
set tags=./tags;
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.meta,TAGS,GTAGS     " MacOSX/Linux
" font
set guifont=DejaVu_Sans_Mono_for_Powerline:h16

" theme
colorscheme gruvbox

" 添加搜索路径
let g:kd='~/Desktop/work/kd/kingdom/client/kingdom/assets/script/'
let g:ps='~/Desktop/work/ps/client/kingdom/assets/script/'
call AddPath(kd, ps)

" 代码模板
autocmd BufNewFile *.ts 0r ~/.vim/vim-conf/template/typescript.ts
