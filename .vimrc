""""""""""""""""""
""" Basics
""""""""""""""""""
let vimpath="~/.config/vim/"

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
nnoremap <leader>h 		<C-w>h
nnoremap <leader>j 		<C-w>j
nnoremap <leader>k 		<C-w>k
nnoremap <leader>l 		<C-w>l

" positioning 
nnoremap <leader>u		<C-w>H
nnoremap <leader>i		<C-w>J
nnoremap <leader>o		<C-w>K
nnoremap <leader>p		<C-w>L

" size
nnoremap _			:vertical resize -5<Cr>
nnoremap +			:vertical resize +5<Cr>
nnoremap -			:resize -5<Cr>
nnoremap =			:resize +5<Cr>


""""""""""""""""""
""" Editor
""""""""""""""""""
" Statusline
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{wordcount().words}\ %P

" Navigation
inoremap <leader><leader>     	<Esc>/<++><Enter>"_c4l
vnoremap <leader><leader>     	<Esc>/<++><Enter>"_c4l
nnoremap <leader><leader>       <Esc>/<++><Enter>"_c4l

" Copy-Paste (neovim)
vnoremap <C-c>               	"+y
map <C-p>                    	"+P

" Enable/Disable spelling 
nnoremap <leader>s	        :setlocal spell! spelllang=en_gb<Enter>
inoremap <C-s>	        	<C-X>s

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
nnoremap <leader>f		:Goyo 120x30<Enter>
nnoremap <C-\>	        	:NERDTreeToggle<Enter>



"""""""""""""""""""""
""" Colour Scheme
"""""""""""""""""""""
colorscheme ron
hi Pmenu 	ctermbg=black ctermfg=white
hi StatusLine 	ctermbg=None ctermfg=white  	cterm=bold
hi StatusLineNC ctermbg=None ctermfg=darkgrey  	cterm=None
hi VertSplit 	ctermbg=None ctermfg=None 	cterm=None

" signcol
hi SignColumn 	ctermbg=None 	ctermfg=None 	cterm=None

" spelling
hi clear SpellBad
hi SpellBad 	ctermfg=red 	ctermbg=None	cterm=undercurl 
hi SpellCap 	ctermfg=cyan 	ctermbg=None    cterm=undercurl 
hi SpellLocal 	ctermfg=white 	ctermbg=None    cterm=undercurl 
hi SpellRare 	ctermfg=white 	ctermbg=None    cterm=undercurl 

" search
set hls
hi Search 	ctermfg=yellow  ctermbg=None 	cterm=standout

""""""""""""""""""""
""" Autocomplete
""""""""""""""""""""
set cot+=menuone,noselect
set shortmess+=c   

inoremap {<CR> {<CR>}<ESC>O


"""""""""""""""""""""
""" Plugins 
"""""""""""""""""""""
if empty(glob(vimpath . '/autoload/plug.vim'))
  silent execute '!curl -fLo ' . vimpath . '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(vimpath . '/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
" Plug 'mkomod/trepl'

""" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""" Scala
" Plug 'derekwyatt/vim-scala'

""" R
" Plug 'jalvesaq/Nvim-R'

""" Latex
" Plug 'lervag/vimtex'

""" vim command line
Plug 'jalvesaq/vimcmdline'

call plug#end()


"""""""""""""""""""""
""" coc-nvim
"""""""""""""""""""""
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab> 	pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<Tab>" : coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

hi DiffDelete 	ctermbg=None 	ctermfg=red 	cterm=None
hi DiffAdd 	ctermbg=None 	ctermfg=green 	cterm=None
hi DiffChange 	ctermbg=None 	ctermfg=None 	cterm=None
hi DiffText 	ctermbg=None 	ctermfg=None 	cterm=None


"""""""""""""""""""""
""" R
"""""""""""""""""""""
" let R_in_buffer = 0
" let R_term = 'urxvt'
" let R_objbr_place = 'BOTTOM'
" let R_objbr_h = 10
" let R_nvimpager = "tab"
" let R_pdfviewer = "zathura"
" vmap <Space> <Plug>RDSendSelection
" nmap <Space> <Plug>RDSendLine


"""""""""""""""""""""
""" LaTeX
"""""""""""""""""""""
" source ~/.config/nvim/LatexSnips.vim


"""""""""""""""""""""
""" Vim CMD
"""""""""""""""""""""
" let cmdline_external_term_cmd = " %s &"

