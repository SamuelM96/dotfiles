" set termguicolors
set hlsearch
set showmatch
set autoindent
set relativenumber
set ignorecase
set tabstop=4
set softtabstop=4
set shiftwidth=4
filetype plugin indent on
let mapleader = ","

call plug#begin('~/.local/share/nvim/plugged')

Plug '~/.fzf'
Plug 'scrooloose/syntastic'
" Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', {'do':'UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh'}

call plug#end()

" let g:deoplete#enable_at_startup = 1

" Theme
syntax on
" colorscheme onedark
let g:airline_theme='deus'

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimming of trailing whitespaces
let g:neoformat_basic_format_trim = 1

let g:neomake_python_enabled_makers = ['pylint']

" Toggle spell checking
nnoremap <leader>s :set invspell<CR>

" Clear highlighting
nnoremap <leader><space> :nohl<CR>

" Rust format on save
let g:rustfmt_autosave = 1

let g:LanguageClient_serverCommands = {
        \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls']
\}

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> H :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
