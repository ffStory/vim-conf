"==============================nerdcommenter
" :map  see command
	" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
	" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
	" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
	" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }}
	" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
	" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
	" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
"==============================nerdcommenter

"==============================airline  start
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
"==============================airline  end

"============================== YouCompleteMe start
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
" 设置跳转到方法/函数定义的快捷键
" nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']"
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']"
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
" 最小自动触发字符补全的字符大小
let g:ycm_min_num_of_chars_for_completion = 3
" 字符补全 作为候选补全项的最下字符
let g:ycm_min_num_identifier_candidate_chars = 4

" YCM的previw窗口比较恼人，还是关闭比较好
set completeopt-=preview
let g:ycm_disable_for_files_larger_than_kb = 500
" let g:ycm_key_invoke_completion = '<c-a>'

let g:ycm_filetype_blacklist = {
      \ 'text': 1,
      \}

"============================== YouCompleteMe end

"============================== fzf start
let g:fzf_layout = { 'down': '~30%' }
" Customize fzf colors to match your color scheme
let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
			\ 'bg':      ['bg', 'Normal'],
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
			\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'info':    ['fg', 'PreProc'],
			\ 'border':  ['fg', 'Ignore'],
			\ 'prompt':  ['fg', 'Conditional'],
			\ 'pointer': ['fg', 'Exception'],
			\ 'marker':  ['fg', 'Keyword'],
			\ 'spinner': ['fg', 'Label'],
			\ 'header':  ['fg', 'Comment'] }


let g:fzf_history_dir = '~/.local/share/fzf-history'
" let $FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'
let $FZF_DEFAULT_COMMAND='rg --files --ignore-file ~/.ignore'
" ag 在.agignore 中忽略
"============================== fzf end

"============================== rooter start
let g:rooter_change_directory_for_non_project_files = ''
" directories and all files (default)
let g:rooter_targets = '/,*'
let g:rooter_patterns = ['.code', '.gitignore', '.git/']
let g:rooter_silent_chdir = 1
"============================== rooter end

"============================== ale start
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'cs': ['OmniSharp']
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0

let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚠'
let g:ale_sign_warning = '►'
"============================== ale end

"============================== typescript-vim start
" let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
"============================== typescript-vim end

"============================== NERDTree start
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.meta$']
"============================== NERDTree end


"============================== vim-js start
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"============================== vim-js end


"============================== ultisnips start
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
"============================== ultisnips start

"============================== DoxygenToolkit start
" let g:DoxygenToolkit_commentType = "TS"
let g:DoxygenToolkit_briefTag_pre ="@brief "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
" let g:DoxygenToolkit_briefTag_funcName="yes"
" let g:DoxygenToolkit_maxFunctionProtoLines = 30
let g:DoxygenToolkit_authorName="fan Wang <2422312148@qq.com>"
let g:DoxygenToolkit_licenseTag="Happy Coding"
"============================== DoxygenToolkit end


"============================== indentline start
" let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"============================== indentline end

"============================== easymotion start
" map <Leader> <Plug>(easymotion-prefix)
map f <Plug>(easymotion-prefix)
map fs <Plug>(easymotion-s)
map ff <Plug>(easymotion-f)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fl <Plug>(easymotion-lineforward)
map fh <Plug>(easymotion-linebackward)
" 忽略大小写
let g:EasyMotion_smartcase = 1

" fs 全屏搜索
" ff 往下搜索
" fF 往上搜索
" fl 行内向右搜索
" fj 行间向下搜索
" fk 行间向上搜索
" fh 行内向左搜索
" fw 往下搜索一个单词开始处
" fb 往上搜索一个单词开始处
" fe 往下搜索一个单词结尾处
" fge 往下搜索一个单词结尾处
"============================== easymotion end
