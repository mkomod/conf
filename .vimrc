""""""""""""""""""
""" Basics
""""""""""""""""""
set encoding=utf-8

let mapleader=","
let maplocalleader=";"

filetype plugin on
filetype indent on
syntax on
set shiftwidth=4
set number relativenumber
set splitbelow
set hidden
set mouse=a

" Enable autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o<Paste>



""""""""""""""""""
""" Wibdows
""""""""""""""""""
map <leader>h 			<C-w>h
map <leader>j 			<C-w>j
map <leader>k 			<C-w>k
map <leader>l 			<C-w>l

" positioning 
map <C-H> 			<C-w>H
map <C-J> 			<C-w>J
map <C-K> 			<C-w>K
map <C-L> 			<C-w>L

" size
nnoremap <leader>-		:resize -1<Cr>
nnoremap <leader>_		:resize -5<Cr>
nnoremap <leader>=		:resize +1<Cr>
nnoremap <leader>+		:resize +5<Cr>
nnoremap <leader><		<C-w><
nnoremap <leader>>		<C-w>>



""""""""""""""""""
""" Editor
""""""""""""""""""
" Statusline
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{wordcount().words}\ %P

" Navigation
inoremap <leader><leader>     	<Esc>/<++><Enter>"_c4l
vnoremap <leader><leader>     	<Esc>/<++><Enter>"_c4l
map <leader><leader>          	<Esc>/<++><Enter>"_c4l

" Copy-Paste (neovim)
vnoremap <C-c>               	"+y
map <C-p>                    	"+P

" Enable/Disable spelling 
nnoremap <leader>s	        :setlocal spell! spelllang=en_gb<Enter>

" Compile
map <leader>c               	:w! \| !~/.scripts/tools/compiler <c-r>%<CR>

" Shortcuts
nnoremap <leader>w		:w<Enter>
nnoremap <leader>q		:close<Enter>
nnoremap <leader>ev     	:vsplit $MYVIMRC<cr>
nnoremap <leader>sv		:source $MYVIMRC<Enter>
nnoremap K			:bn<Enter>
nnoremap <leader><leader>l	:tabn<Enter>
nnoremap <leader><leader>h	:tabp<Enter>
nnoremap <esc><esc>		:noh<Enter>
nnoremap <leader>f		:Goyo<Enter>
noremap  <C-\>	        	:NERDTreeToggle<Enter>



"""""""""""""""""""""
""" Colour Scheme
"""""""""""""""""""""
colorscheme ron
hi Pmenu ctermbg=white
hi StatusLine ctermbg=NONE cterm=NONE
hi StatusLineNC ctermbg=NONE cterm=NONE
hi VertSplit ctermbg=NONE cterm=NONE

" spelling
hi clear SpellBad
hi SpellBad 	cterm=undercurl ctermfg=red 
hi SpellCap 	cterm=undercurl ctermfg=cyan ctermbg=None
hi SpellLocal 	cterm=undercurl ctermfg=white ctermbg=None
hi SpellRare 	cterm=undercurl ctermfg=white ctermbg=None



""""""""""""""""""""
""" Autocomplete
""""""""""""""""""""
nnoremap <leader>a	        :MUcompleteAutoToggle<CR>
set cot+=menuone,noselect
set shortmess+=c   



"""""""""""""""""""""
""" Plugins 
"""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'

""" Autocomplete
Plug 'lifepillar/vim-mucomplete'
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 250

""" Scala
Plug 'derekwyatt/vim-scala'
call plug#end()

