" BASIC SETUP:
set nocompatible            " disable vi compability
filetype plugin indent on   " enable file type detection, plugins, indent 
syntax on

colorscheme delek
" Fix hard to distinguish matched parent (delek colorscheme)
highlight MatchParen cterm=underline ctermbg=white ctermfg=red

let g:netrw_banner=0        " :Explore no banner

" MISCELANEOUS SET:
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set nowrap
set incsearch
set hlsearch
set completeopt=fuzzy
set mouse=a
set number
set relativenumber

" BACKUP:
" no backup but undofile, make it available even after closing vim
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files
set undofile
set undodir=$HOME/.vim/undodir " don't forget create directory

" FINDING FILES:
set path+=** " search down into sub-folder, provide tab-completion to all file-related task
set wildmenu " display all matching files when we tab completion

" TAG JUMPING:
" create the 'tags' file (*BSD need universal-ctags for -R feature)
command! CreateTags !uctags -R .

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
let mapleader = " "

nnoremap <leader>r :%s///g<Left><Left>
nnoremap <leader>g :Ex<cr>
nnoremap Q <Nop>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap J mzJ`z
nnoremap n nzzzv
nnoremap N Nzzzv

xnoremap <leader>p "_dP"
