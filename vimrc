colorscheme afterglow
set t_Co=256


syntax enable " Allow syntax processing
set tabstop=2 " Sets number of spaces a tab produces
set shiftwidth=2
set softtabstop=4 " Number of spaces in tab when editing
set smarttab
set expandtab " Tabs are spaces
set number " Show line numbers
set showcmd " Show command in the bottom bar
filetype plugin indent on " auto indent
set autoindent
set showmatch " Highlights matching [{()}]
set laststatus=2
set noswapfile
set nowrap

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

set mouse=c

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:ctrlp_custom_ignore = 'node_modules'

let mapleader=" "



"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ed/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/ed/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Add or remove your Bundles here:
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
"NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'sbdchd/neoformat'
NeoBundle 'tpope/vim-vinegar'
"NeoBundle 'pangloss/vim-javascript'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'sheerun/vim-polyglot'
"NeoBundle 'leafgarland/typescript-vim'

"hi! link jsStorageClass typescriptIdentifier

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

autocmd BufWritePre *.js Neoformat


nnoremap <Leader>i :CtrlPMRUFiles<CR>
nnoremap H 0
nnoremap L $


"UNICODE SYMBOLS
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
        endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

