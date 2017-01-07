" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'ctrlpvim/ctrlp.vim'
" languages
NeoBundle 'othree/html5.vim'
NeoBundle 'whatyouhide/vim-gotham'
NeoBundle 'bitterjug/vim-colors-bitterjug'
" writing tools
NeoBundle 'reedes/vim-litecorrect'
NeoBundle 'reedes/vim-lexical'
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


syntax on

color gotham

set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set nowrap
set number
set ignorecase
set autoindent
set copyindent
set smarttab
set noswapfile
set nobackup
set title

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>

nnoremap <C-J> <C-w><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" nerdtree
"autocmd vimenter * NERDTree
"let g:NERDTreeWinSize=20



"Plugin configuration
" Airline symbols
