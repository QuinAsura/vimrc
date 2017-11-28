" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Dependencies
" esearch requires vimproc installed
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'sophacles/vim-bundle-mako'

Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

Plug 'mkitt/tabline.vim'
Plug 'scrooloose/nerdtree' 

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

Plug 'eugen0329/vim-esearch'
Plug 'terryma/vim-expand-region'
Plug 'will133/vim-dirdiff'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/taglist.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
" Plug 'vim-syntastic/syntastic'
" Initialize plugin system
call plug#end()
