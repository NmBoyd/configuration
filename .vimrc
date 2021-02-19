syntax on
set noerrorbells
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --all'}
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox


set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

nnoremap <SPACE> <Nop>
let mapleader=" "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_caching=0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <silent> <leader>gd :YcmCompleter GotTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
