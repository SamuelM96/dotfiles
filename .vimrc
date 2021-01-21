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

" Theme
syntax on

" Toggle spell checking
nnoremap <leader>s :set invspell<CR>

" Clear highlighting
nnoremap <leader><space> :nohl<CR>
