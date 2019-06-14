filetype plugin indent on
" Pathogen
execute pathogen#infect()
call pathogen#helptags()                                                    " generate helptags for everything in 'runtimepath'
set sessionoptions=blank,buffers,folds,help,resize,tabpages,winpos,winsize  " Set session persistence options
set enc=utf-8                                                               " Set UTF-8 encoding
set fenc=utf-8
set termencoding=utf-8
set nocompatible                                                            " Disable vi compatibility (emulation of old bugs)
set autoindent                                                              " Use indentation of previous line
set smartindent                                                             " Use intelligent indentation for C
set tabstop=4                                                               " Tab width is 4 spaces
set shiftwidth=4                                                            " Indent also with 4 spaces
set expandtab                                                               " Expand tabs to spaces
set nowrap                                                                  " Do not wrap lines
set noequalalways                                                           " Do not maintain window-size ratio (when having multiple window splits I don't find it desirable)
set textwidth=120                                                           " Wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
syntax on                                                                   " Turn syntax highlighting on
set ignorecase
set smartcase
set incsearch
set hlsearch                                                                " Highlight all search results
set number                                                                  " Turn line numbers on
set comments=sl:/*,mb:\ *,elx:\ */                                          " Intelligent comments
set wildmode=longest:full                                                   " Use intelligent file completion like in the bash
set wildmenu
set hidden                                                                  " Allow changing buffers without saving them
set cul                                                                     " Highlight the current line
set backspace=2                                                             " Backspace tweaks
set backspace=indent,eol,start
set smarttab
syntax enable
colorscheme onedark 
if has("gui_running")                                                       " GUI Vim settings
    set guioptions-=T                                                       "remove toolbar
    set guioptions-=r                                                       "remove right-hand scroll bar
    set guioptions-=L                                                       "remove left-hand scroll bar
endif
set swapfile                                                                
set dir=~/tmp
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
nnoremap <leader>h :vimgrep /<c-r><c-w>/j **/*.c **/*.cpp **/*.h **/*.py <bar> :copen <CR>        " Search current word under cursor in all files "
" Python Jedi autocomplete
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
set completeopt-=preview
" Cycling through listed buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

let g:nerdtree_tabs_autoclose=0
