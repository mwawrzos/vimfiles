execute pathogen#infect()

set ts=4
set tabstop=4
set shiftwidth=4


syntax on
filetype plugin indent on
filetype plugin on

set directory=~/vimfiles/tmp

" Solarized colorscheme

syntax enable
set background=dark
colorscheme solarized

" Haskellmode-vim related stuff
au BufEnter *.hs compiler ghc
let g:haddock_browser="C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
let g:haddock_docdir="C:\\Program Files\\Haskell Platform\\2014.2.0.0\\doc\\html"
let g:haddock_indexfiledir="~/haddock_index.vim"

" Syntastic related stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_haskell_ghc_mod_args='-g"-package ghc"'
