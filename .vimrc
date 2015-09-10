set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this linetpope/vim-surround

" tnoremap <C-h> <C-\><C-n><C-w>h
" tnoremap <C-j> <C-\><C-n><C-w>j
" tnoremap <C-k> <C-\><C-n><C-w>k
" tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k

syntax enable

nnoremap <leader>s :w<cr>
nnoremap <leader>S :w<cr>
nnoremap <leader>ss :mksession! ~/.vim/session.vim<cr>
nnoremap <leader>ssn :mksession! ~/.vim/
nnoremap <Leader>? :let @/=''<cr>
nnoremap <Leader>F :Autoformat<cr><cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>n :NERDTree<cr>
nnoremap <Leader>N :NERDTreeClose<cr>
nmap <leader>vv :vs $MYVIMRC<cr>
nmap <leader>vs :source $MYVIMRC<cr>
nmap <leader>] :bn<cr>
nmap <leader>[ :bp<cr>
nmap <leader>ls :ls<cr>
nmap <leader>T :SyntasticToggleMode<cr>

" nnoremap <Leader>F mzgg=G'z
" nnoremap <Leader>[ :vertical resize -10<cr>
" nnoremap <Leader>] :vertical resize +10<cr>
" nnoremap <Leader>{ :resize -10<cr>
" nnoremap <Leader>} :resize +10<cr>

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

" nmap gd :TernDef<cr>

filetype indent on
filetype plugin on

set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set hlsearch
set list
set listchars=trail:_,tab:>>
set smartindent
set completeopt-=preview
set tw=140
" set foldmethod=syntax
" set clipboard=unnamedplus,unnamed,autoselect
set clipboard=unnamed
set backspace=indent,eol,start
syntax on

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

set laststatus=2
let g:airline_theme = 'airlineish'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "missing </a> before", "inserting implicit <span>", "replacing unexpected button by </button>", "missing </button" ]
let g:syntastic_javascript_ignore_errors=["Redefinition of '_'"]

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

set runtimepath^=~/.vim/bundle/node

cnoremap <c-h> <left>
cnoremap <c-l> <right>
