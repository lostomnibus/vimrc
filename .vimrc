set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tlib_vim'
Plugin 'tommcdo/vim-exchange'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'paranoida/vim-airlineish'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'groenewege/vim-less'
Plugin 'godlygeek/tabular'
Plugin 'garbas/vim-snipmate'
Plugin 'flazz/vim-colorschemes'
Plugin 'dyng/ctrlsf.vim'
Plugin 'burnettk/vim-angular'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Yggdroot/indentLine'
Plugin 'MarcWeber/vim-addon-mw-utils'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Global Stuff
" filetype indent on
" filetype plugin on
set autoindent
set backspace=indent,eol,start
set clipboard=unnamedplus,unnamed,autoselect
set completeopt-=preview
set expandtab " spaces instead of tab character
set hlsearch " highlight search results
set laststatus=2

" display trailing white space as _
set list
set listchars=trail:_,tab:>>

" no line number
set nonumber
set runtimepath^=~/.vim/bundle/node
set shiftwidth=2
set smartindent
set tabstop=2
set tw=140 "text width 140 columns

" set syntax
syntax on

" Window navigation
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k

" clear search highlighting
nnoremap <Leader>? :let @/=''<cr>

" vimrc edit/source
nmap <leader>vv :vs $MYVIMRC<cr>
nmap <leader>vs :source $MYVIMRC<cr>

nmap <leader>] :n<cr>
nmap <leader>[ :p<cr>

" insert lines below or above
nnoremap <c-j> o<esc>k
nnoremap <c-k> O<esc>j

" save file
nnoremap <leader>s :w<cr>
nnoremap <leader>S :w<cr>

" easy leader commands to change inner parens
nnoremap <leader>c( f(ci(
nnoremap <leader>C( F(ci(

" easy leader commands to change inner curly braces
nnoremap <leader>c{ f{ci{
nnoremap <leader>C{ F{ci{

" easy leader commands to change inner single quotes
nnoremap <leader>c' f'ci'
nnoremap <leader>C' F'ci'

" easy leader commands to change inner double quotes
nnoremap <leader>c" f"ci"
nnoremap <leader>C" F"ci"

" easy leader commands to change inner brackets
nnoremap <leader>c[ f[ci[
nnoremap <leader>C[ F[ci[

" easy leader commands to yank inner parens
nnoremap <leader>y( f(yi(
nnoremap <leader>Y( F(yi(

" easy leader commands to yank inner curly braces
nnoremap <leader>y{ f{yi{
nnoremap <leader>Y{ F{yi{

" easy leader commands to yank inner single quote
nnoremap <leader>y' f'yi'
nnoremap <leader>Y' F'yi'

" easy leader commands to yank inner double quote
nnoremap <leader>y" f"yi"
nnoremap <leader>Y" F"yi"

" easy leader commands to yank inner bracket
nnoremap <leader>y[ f[yi[
nnoremap <leader>Y[ F[yi[

" easy leader commands to not func params
nnoremap <leader>!  f(a!<esc>
nnoremap <leader>!! F(a!<esc>

" easy leader commands to delete inner params
nnoremap <leader>d( f(di(
nnoremap <leader>D( F(di(

" easy leader commands to delete inner curly brace
nnoremap <leader>d{ f{di{
nnoremap <leader>D{ F{di{

" easy leader commands to delete inner single quote
nnoremap <leader>d' f'di'
nnoremap <leader>D' F'di'

" easy leader commands to delete inner double quote
nnoremap <leader>d" f"di"
nnoremap <leader>D" F"di"

" easy leader commands to delete inner bracket
nnoremap <leader>d[ f[di[
nnoremap <leader>D[ F[di[

" auto complete ending tag
nnoremap <leader>> i</<c-x><c-o>
iabbrev <// </<c-x><c-o>

" movement in command mode
cnoremap <c-h> <left>
cnoremap <c-l> <right>
" nmap gd :TernDef<cr>

" ==================================
" Autoformat plugin
" ==================================
nnoremap <Leader>F :Autoformat<cr><cr>

" ==================================
" Airline plugin
" ==================================
let g:indentLine_color_term = 1
let g:indentLine_char = '⋮'
let g:ctrlp_custom_ignore = 'node_modules\|coverage\|public/vendor\|logs'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" ==================================
" Fugitive Plugin
" ==================================
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>


" ==================================
" Fugitive Plugin
" ==================================
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gb :Gblame<cr>

" ==================================
" Syntastic Plugin
" ==================================
let g:airline_theme = 'airlineish'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "missing </a> before", "inserting implicit <span>", "replacing unexpected button by </button>", "missing </button" ]
let g:syntastic_javascript_ignore_errors=["Redefinition of '_'"]

" ==================================
" CtrlSF Plugin
" ==================================
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" ==================================
" NerdTree Plugin
" ==================================
nnoremap <Leader>n :NERDTreeToggle<cr>
nnoremap <Leader>N :NERDTreeToggle<cr>

