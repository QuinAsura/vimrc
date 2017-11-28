"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <leader>o :BufExplorer<cr>

"""""""""""""""""""""""""""""""""""
" => Kernel Coding Style 
" To Define Path of Kernel Project
"""""""""""""""""""""""""""""""""""
"let g:linuxsty_patterns = [ "/usr/src/", "/linux", "~/linux/" ]

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-m>'
map <leader>j :CtrlP<cr>
map <leader>m :CtrlPMRU<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => Taglist shorcut 
""""""""""""""""""""""""""""""
map <leader>tt :TlistToggle<cr>
let Tlist_WinWidth=35

""""""""""""""""""""""""""""""
" => Tagbar shorcut 
""""""""""""""""""""""""""""""
nmap <leader>tb :TagbarToggle<cr>
nmap <leader>tp :TagbarTogglePause<cr> 

""""""""""""""""""""""""""""""
" => Vim YouCompleteMe
""""""""""""""""""""""""""""""
"let g:ycm_complete_in_comments_and_strings=1
"let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
"let g:ycm_autoclose_preview_window_after_completion = 1

"This assumes your kernel directory has the word 'kernel'
"let g:ycm_global_ycm_extra_conf='~/.vim_runtime/configs/ycm_extra_conf_kernel.py'
"let g:ycm_global_ycm_extra_conf='~/.vim_runtime/configs/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-e-search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:esearch = {
  \ 'adapter':    'git',
  \ 'backend':    'vimproc',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:multi_cursor_next_key="\<C-s>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline tmuxline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='flatcolor'
let g:airline_powerline_fonts=1
let g:airline_symbols = {}
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch = '¶'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#branch#enabled = 1
let g:tmuxline_separators = {
      \ 'left' : '',
      \ 'left_alt': '',
      \ 'right' : '',
      \ 'right_alt' : '',
      \ 'space' : ' '}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers=['pyflakes']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive Gstatus Workaround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>gd :Gdiff<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gb :Gblame<cr>
