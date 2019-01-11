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

"Plug 'rust-lang/rust.vim'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
"
"
"deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


Plug 'jiangmiao/auto-pairs'

" Lisp stuff
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'cespare/vim-toml'

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml "foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

call plug#end()

"NERDTree stuff
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"IndentGuides
let g:indent_guides_enable_on_vim_startup = 1

"vim-javascript
let g:javascript_plugin_jsdoc = 1

" deoplete

let g:deoplete#enable_at_startup = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_html_tidy_ignore_errors = [ '<link> proprietary attribute "color"' ]

"let g:syntastic_html_tidy_ignore_errors = [
"     \   '<link> proprietary attribute "color"',
"     \   '<link> proprietary attribute "crossorigin"',
"     \   '<link> proprietary attribute "integrity"',
"     \   '<script> proprietary attribute "crossorigin"',
"     \   '<script> proprietary attribute "integrity"'
"     \ ]
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_javascript_checkers=['eslint']
"
"let g:jsx_ext_required = 1
"

let g:vlime_enable_autodoc = v:true
let g:vlime_window_settings = {'sldb': {'pos': 'belowright', 'vertical': v:true}, 'inspector': {'pos': 'belowright', 'vertical': v:true}, 'preview': {'pos': 'belowright', 'size': v:null, 'vertical': v:true}}

"filetype on
filetype plugin indent on

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
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


"terminal stuff
tnoremap <ESC> <C-\><C-n>
tnoremap jk <C-\><C-n>

"let g:python_host_prog = '/full/path/to/neovim2/bin/python'
"let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
