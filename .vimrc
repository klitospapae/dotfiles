if has("win32")
"allow windows keybinds 
source $VIMRUNTIME/mswin.vim
behave mswin
endif

""""""""""plugins"""""""""" 
call plug#begin('~/.vim/plugged')

Plug 'frazrepo/vim-rainbow' 
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-startify'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree' 
Plug 'scrooloose/nerdtree-project-plugin' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

""""""""""plugin setup"""""""""" 
let g:rainbow_active = 1
set laststatus=2
set noshowmode
let g:airline_left_sep='>'
let g:airline_detect_spell=1
let g:airline_detect_modified=1
let g:airline_detect_iminsert=0
let g:airline_inactive_alt_sep=1
let g:airline_stl_path_style = 'short'

let g:ctrlp_clear_cache_on_exit = 0

"set leader for user commands 
let mapleader = ' '

"""""""""""user commands""""""""""" 
nmap <leader>so :source $HOME/.vimrc<CR>
nmap <leader>n :set number!<CR>
nmap <leader>r :set relativenumber!<CR>
nmap <leader>hl :let @/ = ""<CR>
nmap <leader>sc :set spell!<CR>

nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>

nmap <C-h> :wincmd h<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-l> :wincmd l<CR>
nmap <ENTER> o<ESC>

"autodeletes all trailing white space on save 
autocmd BufWritePre * %s/\s+$//e   

inoremap jj <ESC>
inoremap JJ <ESC>
vnoremap jj <ESC>
vnoremap JJ <ESC>

"""""""""""macros""""""""""
"search for highlighted text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"""""""""""syntax highlighting""""""""""
syntax enable 
color koehler 
set bg=dark 
if has("gui_running") 
	set guifont=Consolas:h10:cDEFAULT 
	set guioptions-=T 
endif

"""""""""""sets""""""""""
set noerrorbells "removes error sounds 
set tabstop=4 softtabstop=4 
set expandtab "tabs are spaces 
set shiftwidth=4 "sets > indent to 4 spaces 
set smartindent "autoindenting 
set noswapfile "does not create swap files 
set incsearch "see search results whilst typing 
set number 
set relativenumber 
set ruler 
set hlsearch "highlight after search 
set ignorecase "ignores case when searching... 
set smartcase " ...unless it includes caps 
set nocompatible "stops trying to be vi 
set splitbelow splitright "splits happen below or to the right 
set spelllang=en_gb
