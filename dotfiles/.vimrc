" There is another vimrc file in directory below
" Along with other vim files, like syntax highlighting
" /usr/share/vim
" This vimrc and that one both seem to be applied
" with the one in ~ taking precedence

" Color scheme
colorscheme peachpuff

" No linebreaks between words in soft word-wrap
set linebreak
" Insert hard break after X characters (apply to old text with `gw`)
" set textwidth=66
" Use utility `par` to format text (invoke with `gq`)
" Add `j` to argument for justification
set formatprg=par\ -w66je

" Set to 4 space characters for each indent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" Set to a single tab character that appears 4-spaces-wide
" set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Turn on line numbers
" set number

" Turn off error bell
set belloff=all

" Syntax highlighting
syntax on
" Sets the syntax highlighting for .md to be same as .markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Enable folding based on syntax highlighter, I hope
set foldmethod=syntax
" Makes folds appear automatically at EVERY indentation
" set foldmethod=indent

" For installing plugins
" https://github.com/tpope/vim-pathogen
" Runs Pathogen packages
execute pathogen#infect()

" Syntastic syntax checking
" https://github.com/vim-syntastic/syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 1

" Vim slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
