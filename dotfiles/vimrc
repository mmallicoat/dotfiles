" There is another vimrc file in directory below
" Along with other vim files, like syntax highlighting
" /usr/share/vim
" This vimrc and that one both seem to be applied
" with the one in ~ taking precedence

" Color scheme
" colorscheme default
colorscheme peachpuff

" Sets maximum text width to 80 characters
set columns=80

" Set to 4 space characters for each indent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" Set to a single tab character that appears 4-spaces-wide
" set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Turn on line numbers
set number

" Syntax
syntax on

" Sets the syntax highlighting for .md to be same as .markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Enable folding based on syntax highlighter, I hope
set foldmethod=syntax
" Makes folds appear automatically at EVERY indentation
" set foldmethod=indent

" For installing plugins
" https://github.com/tpope/vim-pathogen
" Uncomment below to turn syntax checking back on
execute pathogen#infect()

" Syntastic syntax highlighting
" https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
