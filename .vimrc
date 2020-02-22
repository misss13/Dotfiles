runtime! debian.vim			"it must be above everything in debian .vimrc

set nocompatible             
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"___Plugin___
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
"Plugin 'nvie/vim-flake8'
"Plugin 'sirver/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'morhetz/gruvbox'

call vundle#end()           
filetype plugin indent on    
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve remo

syntax on
" reopening a file

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set number
set autoindent 
set tabstop=3
nmap <F2> :tabnew
nmap <F9> :make<bar>cwin
:map <F8> :!./szablon
nmap <F3> :tabprev
nmap <F4> :tabnext
nmap <S-Up> V
nmap <S-Down> V
nmap <S-Left> v 
nmap <S-Right> v
vmap <C-c> y
vmap <C-v> p
nmap <C-a> ggVG
vmap <C-x> d
set background=dark
set mouse=a
set ruler
set hidden
set laststatus=2
set smartindent
set shiftwidth=4
set tabstop=4
let g:vim_json_syntax_conceal = 0
set colorcolumn=80
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"___Colors___
"colorscheme gruvbox
set guifont=Inconsolata\ 14
" set guifont=C64\ Pro\ Mono\ 8

"___ NERDTREE___
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

"___ flake8___
"let g:flake8_show_in_file=1

"___snippets___
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"___disable swap warning___
set shortmess+=A
