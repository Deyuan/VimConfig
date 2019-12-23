" VIM Configuration File (.vimrc)
" Author: Deyuan Guo <guodeyuan@gmail.com>
" Date: Dec 23, 2019

" How to Use
" mkdir ~/.vim/plugged
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

" ================================
" General
" ================================
set nocompatible                " first to set
syntax enable                   " syntax highlighting
filetype plugin indent on       " file type based settings
set title                       " set console title
set shortmess+=I                " turn off intro message
set mouse=a                     " enable mouse
set noerrorbells                " no beep
set novisualbell                " no visual bell
set t_vb=                       " no flashing
set laststatus=2                " status line at bottom
set number                      " line number
set showcmd                     " show command
set nowrap                      " don't wrap long lines
set list                        " show whitespace chars
set listchars=tab:»\ ,trail:·,extends:#,nbsp:.  " witespace chars (Ctrl-k + >>|.M)
set scrolloff=3                 " lines before cursor reach top or bottom
set showmatch                   " show matching brackets
set history=500                 " command/search history
set incsearch                   " search as type
set hlsearch                    " highlight search results
set ignorecase                  " ignore case when search
set smartcase                   " ignore case for lower case only
set backspace=indent,start,eol  " backspace can go over
set whichwrap+=<,>,h,l          " arrow keys can go over
set autoindent                  " auto indent
set copyindent                  " copy previous indent
set smartindent                 " try to smart indent
set expandtab                   " expand tabs to spaces
set softtabstop=2               " auto indent 2
set tabstop=4                   " tabs length 4
set shiftwidth=2                " when press << >> and ==
set nobackup                    " no back up files
set nowritebackup               " no write-delete-rename
set noswapfile                  " don't use swapfile
set hidden                      " hide buffers instead of closing
set noshowmode                  " no need to show mode with airline
set background=dark             " background
set viminfo='100,<2000,s10,h    " remembered files, paste lines, register kb, no hl
set timeoutlen=1000             " timeout ms
"setlocal spell spelllang=en_us

" ================================
" Remember Last Position
" ================================
" Jump to the last editing position when opening a file.
" see :help last-position-jump
autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

" Use cursor line to differentiate insert mode and normal mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" ================================
" vim-plug
" need to run this for the first time:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" ================================
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()

" theme
let g:solarized_termcolors=256
colorscheme solarized

" vim-airline
let g:airline_theme = 'powerlineish'
" enable buffer list on top
let g:airline#extensions#tabline#enabled = 1

" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" nerdcommenter
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
"let g:NERDCommentEmptyLines = 1

" FZF
let g:fzf_command_prefix = 'Fzf'
let g:fzf_buffers_jump = 1
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" map K <Plug>(expand_region_expand)
" map J <Plug>(expand_region_shrink)

" { (  [  xxx  ]  ) }

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1


" ================================
" Key Bindings
" ================================
" leader keys
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" navigate wrapped lines
nnoremap j gj
nnoremap k gk
inoremap jk <Right><Esc>

" shortcut
nnoremap ; :

" window navigation
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

nmap <silent> <leader><left> :bp<CR>
nmap <silent> <leader><right> :bn<CR>

" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>
map <leader>pp :setlocal paste!<cr>


" vim command line keys
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" Define prefix dictionary
" let g:lmap =  {}

" let g:lmap.b = { 'name' : 'Buffers' }
" let g:lmap.f = { 'name' : 'File Menu' }
" let g:lmap.n = { 'name' : 'Nerd Tree' }
" let g:lmap.o = { 'name' : 'Open Stuff' }

" let g:lmap.t = { 'name' : 'toggles' }
" let g:lmap.t.n = [':set nu!', 'toggle line numbers']
" let g:lmap.t.l = [':set wrap!', 'toggle wrap lines']
" let g:lmap.t.w = [':set list!', 'toggle whitespaces']

" 'name' is a special field. It will define the name of the group.
" leader-f is the "File Menu" group.
" Unnamed groups will show a default string

" Provide commands and descriptions for existing mappings
    "nmap <silent> <leader>fd :e $MYVIMRC<CR>
    "let g:lmap.f.d = ['e $MYVIMRC', 'Open vimrc']

    "nmap <silent> <leader>fs :so %<CR>
    "" let g:lmap.f.s = ['so %', 'Source file']

    "nmap <silent> <leader>oo  :copen<CR>
    "" let g:lmap.o.o = ['copen', 'Open quickfix']

    "nmap <silent> <leader>ol  :lopen<CR>
    "" let g:lmap.o.l = ['lopen', 'Open locationlist']

    "nmap <silent> <leader>fw :w<CR>
    "" let g:lmap.f.w = ['w', 'Write file']

"let g:lmap.f.z = ['FZF', 'Run FZF']

"" Create new menus not based on existing mappings:
"let g:lmap.g = {
    "            \'name' : 'Git Menu',
    "            \'s' : ['Gstatus', 'Git Status'],
    "            \'p' : ['Gpull',   'Git Pull'],
    "            \'u' : ['Gpush',   'Git Push'],
    "            \'c' : ['Gcommit', 'Git Commit'],
    "            \'w' : ['Gwrite',  'Git Write'],
    "            \}

"" If you use NERDCommenter:
"let g:lmap.c = { 'name' : 'Comments' }
"" Define some descriptions
"let g:lmap.c.c = ['call feedkeys("\<Plug>NERDCommenterComment")','Comment']
"let g:lmap.c[' '] = ['call feedkeys("\<Plug>NERDCommenterToggle")','Toggle']
"" The Descriptions for other mappings defined by NerdCommenter, will default
"" to their respective commands.

""call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
""nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
""vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

