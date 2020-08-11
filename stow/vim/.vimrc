let mapleader = " "

" PLUGINS
    call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'rakr/vim-one'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vimwiki/vimwiki'
    Plug 'https://github.com/masukomi/vim-markdown-folding'
    call plug#end()

" some basics
    " better safe than sorry
        set nocompatible
    " use indentation scripts located in the indent folder of vim installation
        filetype plugin indent on
    " allow backspacing over the following
        set backspace=indent,eol,start
    " others
        syntax on
        set encoding=utf-8
        set number
        set nowrap
        set scrolloff=2
        set list
        set listchars=tab:▸\ ,eol:¬,trail:•

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Colorscheme
    let g:airline_theme='minimalist'
    colorscheme gruvbox
    set background=dark

" Folding - can be done using [za, zR, zM, zc, zo, zC, zO]
    " fold based on indentation
        set foldmethod=indent
    " no folding by default
        set nofoldenable
    " don't ignore any lines
        set foldignore=
    " markdown folding
        let g:markdown_folding=1

" Netrw
    let g:netrw_liststyle = 3
    let g:netrw_banner = 0
    let g:netrw_browse_split = 4
    let g:netrw_winsize = 25

" TABS
    " show existing tab with 4 spaces width
        set tabstop=4
    " delete 4 spaces at a time since vim sees it as a tabstop
        set softtabstop=4
    " when indenting with '>', use 4 spaces width
        set shiftwidth=4
    " On pressing tab, insert 4 spaces
        set expandtab
    " Newline matches indent of previous line
        set autoindent
    " Automatically indent braces
        " set cindent

" SEARCH
    " search as characters are entered
        set incsearch
    " highlights matches
        set hlsearch
    " ignore case
        set ignorecase
    " switch to case-sensitive if query contains uppercase
        set smartcase
    " turn off search highlight
        nnoremap <silent> <LEADER>sc :nohlsearch<CR>

" FILES
    " explorer
        nnoremap <leader>fe :Hexplore<CR>
    " file search
        nnoremap <leader>ff :Files<CR>

" vim clipboard (requires vim-gtk)
    noremap <LEADER>Y "*y
    noremap <LEADER>P "*p
    noremap <LEADER>y "+y
    noremap <LEADER>p "+p

" python execution shortcut
    vnoremap <silent> <LEADER>[ :w ! python3<CR>
    nnoremap <silent> <LEADER>[ :w ! python3<CR>

" disable arrow keys
    nnoremap <Left> <Nop>
    nnoremap <Right> <Nop>
    nnoremap <Up> <Nop>
    nnoremap <Down> <Nop>
set runtimepath^=~/.vim/bundle/vlime/vim
