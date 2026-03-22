" BASIC SETUP:
set nocompatible            " disable vi compability
filetype plugin indent on   " enable file type detection, plugins, indent 
let g:netrw_banner=0        ":Explore no banner
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set nowrap
set incsearch
set hlsearch

" BACKUP:
" No backup but undofile, make it available even after closing nvim
set noswapfile
set nobackup
set undofile
set undodir=os.getenv("HOME") .. "/.vim/undodir"

" FINDING FILES:
" Search down into sub-folder, provide tab-completion to all file-related task
set path+=**

" Display all matching files when we tab completion
set wildmenu

" TAG JUMPING:
" Create the 'tags' file (*BSD need universal-ctags for -R feature)
command! MakeTags !uctags -R .

" FORMAT & AUTOFORMAT:
augroup filetype_format_modifier
    autocmd!
    autocmd FileType c,cpp,h,hpp setlocal equalprg=clang-format19
augroup END

command! FormatThisFile :normal gg=G``

" augroup format_on_save
"     autocmd!
"     autocmd BufWritePre * :normal gg=G``
" augroup END

" KEYMAP MODIFICATIONS:
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz

