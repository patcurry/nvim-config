set termguicolors


colorscheme NeoSolarized
set background=dark

"solarized stuff for nvim in tmux
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/autoload/plugged')

" Make sure you use single quotes

Plug 'rust-lang/rust.vim'

Plug 'vim-syntastic/syntastic'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'tpope/vim-surround'

call plug#end()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_html_tidy_ignore_errors = [ '<link> proprietary attribute "color"' ]

let g:syntastic_html_tidy_ignore_errors = [
     \   '<link> proprietary attribute "color"',
     \   '<link> proprietary attribute "crossorigin"',
     \   '<link> proprietary attribute "integrity"',
     \   '<script> proprietary attribute "crossorigin"',
     \   '<script> proprietary attribute "integrity"'
     \ ]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']

let g:jsx_ext_required = 1


filetype on

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

set number

set showcmd

set cursorline

set lazyredraw

"Show closures for {[()]} keys
"set showmatch
"{}()[]

"Substitute 'jk' key combo for escape
inoremap jk <esc>

"Put a new space in without entering insert mode
nmap <S-D> O<C-[>

"Split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L><C-W>=<CR>
nnoremap <C-H> <C-W><C-H><C-W>=<CR>

set encoding=utf-8

