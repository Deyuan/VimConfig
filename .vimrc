" VIM Configuration File (.vimrc)
" Author: Deyuan
" Date: Sep 8, 2013

" ================================
" General
" ================================
set nocompatible                " don't have to be compatible with vi
filetype indent plugin on       " indent based on file type
set history=500                 " 500 command line history
syntax enable                   " syntax highlighting

" ================================
" User Interface
" ================================
set number                      " show line number
set list                        " show whitespace chars
set listchars=tab:»\ ,trail:·   " witespace chars (Ctrl-k + >>|.M)
set laststatus=2                " show status line at bottom
set ruler                       " show ruler
set showcmd                     " show command
set cmdheight=2                 " command line height
set scrolloff=5                 " lines before cursor reach top or bottom
set backspace=indent,start,eol  " backspace go over
set whichwrap+=<,>,h,l          " wrap around start and eol
set incsearch                   " search as you type
set hlsearch                    " highlight the search result
set ignorecase                  " ignore case when search
set smartcase                   " try to smart case when search
set showmatch                   " show matching brackets
set visualbell                  " visual bell instead of beep
set shortmess+=I                " turn off the intro message

" ================================
" Tab and Indent
" ================================
set autoindent                  " auto indent
set smartindent                 " try to smart indent
set expandtab                   " expand tabs to spaces
set softtabstop=4               " auto indent 4
set tabstop=8                   " tabs length 4
set shiftwidth=4                " when press << >> and ==
set wrap                        " wrap long line

" ================================
" Files and Backup
" ================================
set nobackup                    " no back up files
set nowritebackup               " write new - delete old - rename new
set noswapfile                  " don't use swapfile
set directory-=.                " don't store swapfile in current dir
set viminfo='100,<2000,s10,h    " copy/paste lines

" ================================
" Mouse
" ================================
set mouse=a                     " basic mouse support for all mode

" ================================
" StatusLine
" ================================
" %n: Buffer number;
" %y: Type of file, e.g., [vim];
set statusline=[%n]%y
" %<: Truncate from left if string is too long;
" %F: Full path to the file;
" %m: [+] means modified, [-] means modifiable is off;
" %h: [help] means text is in help buffer;
" %r: [RO] means text is readonly;
" %w: [Preview] for preview window;
set statusline+=\ %<%F%(\ %m%h%r%w%)
" %{&ff}: File format;
" %{''.(&fenc!=''?&fenc:&enc).''}: File encoding;
set statusline+=\ [%{&ff}.%{''.(&fenc!=''?&fenc:&enc).''}]
" %=: Change from left aligned to right aligned;
" %10(...%): Set width for item group;
" %l: Line number;
" %c: Column number;
" %V: Virtual column number, not display if equal to %c;
" %L: Number of lines in buffer;
set statusline+=%=\ \ %10(%l,%c%V%)/%L
" %P: Percentage through file of displayed window;
set statusline+=\ %P
" %08O: Hex offset from start of file;
" %02B: Hex value of byte under cursor;
"set statusline+=[%08O:%02B]
" %{strftime()}: Show hours and minutes;
set statusline+=\ %{strftime(\"[%H:%M]\")}

" ================================
" Highlight
" ================================
" Set the highlight of vim -d
highlight DiffAdd cterm=none ctermfg=none ctermbg=22
highlight DiffDelete cterm=none ctermfg=22 ctermbg=none
highlight DiffChange cterm=none ctermfg=none ctermbg=52
highlight DiffText cterm=none ctermfg=none ctermbg=56
" Set the highlight of 80 char line
highlight ColorColumn ctermbg=233
set colorcolumn=80
" Highlight the text exceeded 80 columns
" Search for \%>80v.\+
" autocmd BufWinEnter * let w:m=matchadd('ErrorMsg', '\%>80v.\+', -1)

" ================================
" Last Position
" ================================
" Jump to the last editing position when opening a file.
" see :help last-position-jump
autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

