set hlsearch        "  Highlight searches
set showmatch       "  Shows matching bracer
set autoindent      "  Auto indents newlines
set number			"  Show current line number
set relativenumber  "  Relative numbering, useful for relative commands
set ignorecase      "  Case insensitive searching
set smartcase		"  Care about case when using capitals
set incsearch		"  Incremental searching
set tabstop=4       "  Tabs = 4 columns
set softtabstop=4   "  Mimics tabstop 4 visually in files with a different tabstop
set shiftwidth=4    "  Identation amount
set mouse=a			"  Mouse support
set clipboard^=unnamed,unnamedplus		" Use system clipboard
filetype plugin indent on				" Indent on plugin filetype
let mapleader = ","						" Leader keybind

" Save file as sudo
cmap w!! w !sudo tee > /dev/null %

" Plugins
call plug#begin('~/.vim/autoload/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir':'~/.fzf', 'do': { -> fzf#install()  }  }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'jparise/vim-graphql'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'voldikss/vim-floaterm'
" Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree'
call plug#end()

" Theme
syntax on
set background=dark
colorscheme deep-space
let g:airline_theme='deep_space'
let g:airline_powerline_fonts = 1

" Completion window colours (white on dark grey)
hi Pmenu ctermbg=8   
hi Pmenu ctermfg=15

" Toggle spell checking
nnoremap <leader>s :set invspell<CR>

" Clear highlighting
nnoremap <leader><space> :nohl<CR>

" CoC config
source ~/.config/nvim/plug-config/coc.vim

" Disable gutter display by default (only shows when needed)
set signcolumn=no

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Floaterm
let g:floaterm_keymap_toggle = '<leader>t'
