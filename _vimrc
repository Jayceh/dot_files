colorscheme oceandeep

" refresh diff
map <F8> :diffupdate<CR>

" Line numbers
map <F9> :set<Space>nu!<CR>

" reveal codes
map <F10> :set<Space>list!<CR>

" ROT13 entire file stay on current line
"map <F11> <Esc>mrggVGg?<CR>'r

" Toggle long lines with <F12>
map <F12> :set<Space>wrap!<CR>

" tabspaces and expandtab
set et
set ts=2
set ai
set nowrap

:au Filetype markdown source ~/.vim/markdown.vim

filetype plugin indent on
set backspace=indent,eol,start
set showmatch
set smartindent
set background=dark
set nu
syntax on
set shiftround
set cursorline
set matchpairs+=<:>

iab pdbg  use Data::Dumper 'Dumper';\nwarn Dumper [];^[hi
let g:perl_fold = 1

set pastetoggle=<F11>
nmap <leader>G   :ToggleGitMenu<CR>
