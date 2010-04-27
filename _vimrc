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
set sw=2
set ai
set nowrap
set wildmode=list:longest

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
let perl_fold=1
let perl_fold_blocks=1


set pastetoggle=<F11>
nmap <leader>G   :ToggleGitMenu<CR>
" incremental search
set incsearch
set bg=dark

" show matching brackets
autocmd FileType perl set showmatch

" show line numbers
autocmd FileType perl set number

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" dont use Q for Ex mode
map Q :q

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>

" Deparse obfuscated code
nnoremap <silent> _d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent> _d :!perl -MO=Deparse 2>/dev/null<cr>


