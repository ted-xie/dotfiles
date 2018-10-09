execute pathogen#infect()
syntax on
filetype plugin indent on

set smartindent tabstop=4 shiftwidth=4 expandtab

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nu

