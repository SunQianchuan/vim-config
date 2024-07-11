set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'itchyny/lightline.vim'
Plug 'VundleVim/Vundle.vim'
Plug 'majutsushi/tagbar'
call plug#end()

let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

let g:gutentags_ctags_tagfile = '.tags'

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
	   silent! call mkdir(s:vim_tags, 'p')
   endif

   let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
   let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
   let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
   map <C-n> :NERDTreeToggle<CR>
   let g:Lf_ShortcutF = '<c-p>'
   set laststatus=2
   set statusline=%F
   let g:lightline = {
         \ 'colorscheme': 'wombat',
         \ 'active': {
         \     'left':  [  [ 'mode', 'paste' ],
         \                 [ 'readonly', 'filename', 'modified', 'saysth' ] ]
         \ },
         \ }

set enc=utf-8
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set completeopt=preview,menu
filetype plugin on
set clipboard+=unnamed 
set syntax=on
set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set ignorecase
set hlsearch
set incsearch
set backspace=indent,eol,start
set noswapfile

" ctags
set tags=tags  
set autochdir 

" NerdTree
" autocmd VimEnter * NERDTree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" gutentags config
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

if !isdirectory(s:vim_tags)
	silent! call mkdir(s:vim_tags, 'p')
endif

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" LeaderF
" let g:LF_RootMarkers = ['.root', '.svn', '.git', '.project']
" let g:LF_GtagsAutoGenerate = 1
" let g:LF_GtagsAutoUpdata = 1
" let g:LF_ShowRelativePath = 1

" tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'  
let g:tagbar_width=40
let g:tagbar_right=1  
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  
map <F3> :TagbarToggle<CR>

" complate
set dictionary+=/usr/share/dict/words
