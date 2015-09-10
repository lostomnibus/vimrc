set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
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
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Global Stuff
filetype indent on
filetype plugin on
set autoindent
set backspace=indent,eol,start
set clipboard=unnamedplus,unnamed,autoselect
set completeopt-=preview
set expandtab
set hlsearch
set laststatus=2
set list
set listchars=trail:_,tab:>>
set number
set runtimepath^=~/.vim/bundle/node
set shiftwidth=2
set smartindent
set tabstop=2
set tw=140
syntax on

" Window navigation
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k

" clear search highlighting
nnoremap <Leader>? :let @/=''<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>n :NERDTree<cr>
nnoremap <Leader>N :NERDTreeClose<cr>
nmap <leader>vv :vs $MYVIMRC<cr>
nmap <leader>vs :source $MYVIMRC<cr>
nmap <leader>] :n<cr>
nmap <leader>[ :p<cr>
nmap <leader>ls :ls<cr>
nmap <leader>T :SyntasticToggleMode<cr>
nnoremap <leader>c( f(ci(
nnoremap <leader>C( F(ci(
nnoremap <leader>c{ f{ci{
nnoremap <leader>C{ F{ci{
nnoremap <leader>c' f'ci'
nnoremap <leader>C' F'ci'
nnoremap <leader>c" f"ci"
nnoremap <leader>C" F"ci"
nnoremap <leader>c[ f[ci[
nnoremap <leader>C[ F[ci[
nnoremap <leader>y( f(yi(
nnoremap <leader>Y( F(yi(
nnoremap <leader>y{ f{yi{
nnoremap <leader>Y{ F{yi{
nnoremap <leader>y' f'yi'
nnoremap <leader>Y' F'yi'
nnoremap <leader>y" f"yi"
nnoremap <leader>Y" F"yi"
nnoremap <leader>y[ f[yi[
nnoremap <leader>Y[ F[yi[
nnoremap <leader>!  f(a!<esc>
nnoremap <leader>!! F(a!<esc>
nnoremap <leader>d( f(di(
nnoremap <leader>D( F(di(
nnoremap <leader>d{ f{di{
nnoremap <leader>D{ F{di{
nnoremap <leader>d' f'di'
nnoremap <leader>D' F'di'
nnoremap <leader>d" f"di"
nnoremap <leader>D" F"di"
nnoremap <leader>d[ f[di[
nnoremap <leader>D[ F[di[
nnoremap <leader>> i</<c-x><c-o>
iabbrev <// </<c-x><c-o>
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
"
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

