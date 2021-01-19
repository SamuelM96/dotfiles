" set termguicolors
set  hlsearch        "  Highlight searches
set  showmatch       "  Shows matching bracer
set  autoindent      "  Auto indents newlines
set  relativenumber  "  Relative numbering, useful for relative commands
set  ignorecase      "  Case insensitive searching
set  tabstop=4       "  Tabs = 4 columns
set  softtabstop=4   "  Mimics tabstop 4 visually in files with a different tabstop
set  shiftwidth=4    "  Identation amount
set  mouse=a		 "  Mouse support
filetype plugin indent on " Indent on plugin filetype
let mapleader = ","     " Leader keybind

" Save file as sudo
cmap w!! w !sudo tee > /dev/null %

" Plugins
call plug#begin('~/.vim/autoload/plugged')
Plug 'junegunn/fzf', { 'dir':'~/.fzf', 'do': { -> fzf#install()  }  }
Plug 'tpope/vim-obsession'
Plug 'scrooloose/syntastic'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree'
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/deoplete.nvim', {'do':'UpdateRemotePlugins'}
" Plug 'zchee/deoplete-jedi'
" Plug 'joshdick/onedark.vim'
" Plug 'rust-lang/rust.vim'
" Plug 'autozimu/LanguageClient-neovim', {
"         \ 'branch': 'next',
"         \ 'do': 'bash install.sh'}

call plug#end()


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

" Python linter
let g:neomake_python_enabled_makers = ['pylint']

" Toggle spell checking
nnoremap <leader>s :set invspell<CR>

" Clear highlighting
nnoremap <leader><space> :nohl<CR>


" let g:deoplete#enable_at_startup = 1

" Rust format on save
" let g:rustfmt_autosave = 1

" let g:LanguageClient_serverCommands = {
"         \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls']
" \}

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> <leader> H :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
