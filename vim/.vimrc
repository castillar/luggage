" Plugins ------------------------------------
" Run Pathogen and extract plugins into their respective places in .vim
" execute pathogen#infect()
" Execute powerline setup
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
" execute pathogen#runtime_append_all_bundles()
" Add bundle directory
call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'edkolev/tmuxline.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
call plug#end()
" Colors -------------------------------------
set background=dark
" let g:moonflyCursorLineNr = 0
let g:moonflyCursorColor = 1
let g:moonflyUnderlineMatchParen = 1
"let g:nord_italic = 1
"let g:nord_italic_comments = 1
"let g:nord_underline = 1
let g:nord_cursor_line_number_background = 1
"let g:nord_comment_brightness = 20
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set encoding=utf-8 " Necessary to show Unicode glyphs
"set termguicolors
" Activate Colors
" colorscheme molokai
" colorscheme moonfly
colorscheme nord
" Misc ---------------------------------------
syntax enable
filetype plugin indent on
" Tabs and Spaces ----------------------------
set tabstop=4 " This sets the number of spaces inserted to represent tabs when parsing a file
set softtabstop=4 " This sets the number of spaces inserted for a tab when editing
set expandtab " This converts tabs to spaces
set shiftwidth=4 " Number of spaces to use for automatic indents
" UI and Layout ------------------------------
set number " Show the line numbers
set cursorline " Highlight the current line
set lazyredraw " Don't bother redrawing the screen while executing things like macros
set showcmd " Always show the commandline (except with powerline)
set showmatch " Highlight matching [{()}]
set wildmenu " Command menu autocompletion
set laststatus=2   " Always show the statusline
set nocompatible   " Disable vi-compatibility
" Searching ----------------------------------
set incsearch " Search as characters are entered
set hlsearch " Highlight search matches
" The below turns off search highlighting when you type ,<space>
nnoremap <leader><space> :nohlsearch<CR>
" Show the undo tree (GUNDO!) using ,u<CR>
nnoremap <leader>u :GundoToggle<CR>
" Backups ------------------------------------
" Relocate backups to a sane location
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*
set writebackup
" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
