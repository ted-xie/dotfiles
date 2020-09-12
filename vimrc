execute pathogen#infect()
syntax on
filetype plugin indent on

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nu
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

au BufRead,BufNewFile *.md setlocal textwidth=80

