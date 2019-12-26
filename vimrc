" VIM Configuration File (.vimrc)
" Deyuan Guo

" How to Use
" mkdir ~/.vim/plugged
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

" ================================
" General
" ================================
set nocompatible                " first to set
set langmenu=en_US.UTF-8        " for displaying unicode characters
let $LANG = 'en_US.UTF-8'
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
set wildmenu                    " show completion matches
set nowrap                      " don't wrap long lines
set list                        " show whitespace chars
set listchars=tab:»\ ,trail:·,extends:#,precedes:<,nbsp:.  " witespace chars (Ctrl-k + >>|.M)
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
set viminfo='100,<2000,s10,h    " remembered files, paste lines, register kb, no hl
set timeoutlen=1000             " timeout ms
set background=dark             " dark background
set magic                       " regex matching style
" set rnu                       " relateve line number

" Use cursor line to differentiate insert mode and normal mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Tags
" set tags=./tags

" ================================
" Remember Last Position
" ================================
" Jump to the last editing position when opening a file.
" see :help last-position-jump
autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

" ================================
" vim-plug
" ================================
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()

" theme
let g:solarized_termcolors=256
colorscheme solarized

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1

" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" FZF
let g:fzf_command_prefix = 'F'
let g:fzf_buffers_jump = 1

" easy motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" ================================
" Key Bindings
" ================================
let g:mapleader = ','
inoremap jk <Esc>
nnoremap ; :
nmap s <Plug>(easymotion-s)
nmap <Space> <Plug>(easymotion-overwin-line)
nnoremap <leader> <Nop>
nmap <leader>cd :cd %:p:h<CR>:pwd<CR>
nmap <leader>fb :FBuffers<CR>
nmap <leader>fc :FCommands<CR>
nmap <leader>ff :FFiles<CR>
nmap <leader>fw :FWindows<CR>
nmap <leader>fk <Plug>(fzf-maps-n)
xmap <leader>fk <Plug>(fzf-maps-x)
omap <leader>fk <Plug>(fzf-maps-o)
nmap <leader>fm :NERDTreeFromBookmark<Space>
nmap <leader>ft :NERDTreeToggle<CR>
nmap <leader>fv :e $MYVIMRC<CR>
nmap <leader>q :close<CR>
nmap <leader>tp :setlocal paste!<CR>
nmap <leader>ts :setlocal spell! spelllang=en_us<CR>


