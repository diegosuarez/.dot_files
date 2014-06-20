version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Inconsolata\ Medium\ 12
color slate
set helplang=es
set history=50
set nomodeline
set mouse=
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set window=45
set nu
" vim: set ft=vim :
" Folding
set foldcolumn=3         " 2 lines of column for fold showing, always
set foldmethod=syntax
set foldlevelstart=99    
set ignorecase
set enc=utf-8            " UTF-8 Default encoding
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set cursorline           " highlight current line                                                                                                                                  
map <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TlistToggle<CR>
nnoremap gz :!zeal --query "<cword>"&<CR><CR>

if $COLORTERM == 'gnome-terminal'
     set term=gnome-256color
     colorscheme railscasts
else
"    colorscheme luinnar
     colorscheme elflord
endif

""autocmd FileType css set omnifunc=csscomplete#CompleteCSS
""autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
""autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
""autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
""autocmd FileType php set omnifunc=phpcomplete#CompletePHP
""autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" Remap code completion to Ctrl+Space 
"inoremap <Nul> <C-x><C-o>
au BufRead,BufNewFile *.twig set filetype=htmljinja


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
Bundle "scrooloose/nerdtree"
