""" Basic vimrc

""" Setup """
let mapleader=","
let maplocalleader=";"


""" Basics
set encoding=utf-8
set number relativenumber
set hidden
set mouse=a
set splitbelow

""" File
syntax on
filetype plugin on
filetype indent on
set shiftwidth=4

" Save
nnoremap <leader>w	    :w<Enter>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o<Paste>

" Enable autocompletion:
set wildmode=longest,list,full


""" Buffers and Movement
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" positioning 
map <C-H> <C-w>H
map <C-J> <C-w>J
map <C-K> <C-w>K
map <C-L> <C-w>L

" Buffer size
nnoremap <leader>-	:resize -1<Cr>
nnoremap <leader>_	:resize -5<Cr>
nnoremap <leader>=	:resize +1<Cr>
nnoremap <leader>+	:resize +5<Cr>
nnoremap <leader><	<C-w><
nnoremap <leader>>	<C-w>>

" Clsing files
map <leader>q <Esc>         :close<Enter>
nnoremap <C-q>	            :q<Enter>

" Navigation
nnoremap K		            :bn<Enter>
nnoremap <leader><leader>l	:tabn<Enter>
nnoremap <leader><leader>h	:tabp<Enter>

""" Editing vimrc
nnoremap <leader>ev     :vsplit $MYVIMRC<cr>
nnoremap <leader>sv	    :source $MYVIMRC<Enter>


""" Colours
highlight Pmenu ctermbg=white


""" spelling
nnoremap <leader>s	:setlocal spell! spelllang=en_gb<Enter>
hi clear SpellBad
hi SpellBad 	cterm=undercurl ctermfg=red 
hi SpellCap 	cterm=undercurl ctermfg=cyan ctermbg=None
hi SpellLocal 	cterm=undercurl ctermfg=white ctermbg=None
hi SpellRare 	cterm=undercurl ctermfg=white ctermbg=None

" turn off highlighting
nnoremap <esc><esc>	    :noh<Enter>

" word count
vnoremap <leader>c 	    :'<,'>:w !wc<CR>


""" Navigation
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l


colorschem ron
set hlsearch
hi Visual term=reverse cterm=reverse guibg=Grey

