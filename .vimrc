version 7.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save

"Colores
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
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
set nu "Numeros de linea.
set foldcolumn=3         " 2 lines of column for fold showing, always
set foldmethod=syntax
set foldlevelstart=99    
set ignorecase
set enc=utf-8            " UTF-8 Default encoding
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
"set cursorline           " highlight current line                                                                                                                                  
map <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TlistToggle<CR>
nnoremap gz :!zeal --query <cword> > /dev/null 2>&1 &<CR><CR>

set t_Co=256 
colorscheme elflord

""autocmd FileType css set omnifunc=csscomplete#CompleteCSS
""autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=tern#CompleteJS
""autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
""autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
""autocmd FileType php set omnifunc=phpcomplete#CompletePHP
""autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1

" Remap code completion to Ctrl+Space 
inoremap <Nul> <C-x><C-o>
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja

"Javascript time! 
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType javascript call tern#Enable()
autocmd FileType javascript runtime after/ftplugin/javascript_tern.vim
autocmd FileType html set ft=html.javascript_tern
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Status Powerline 
set laststatus=2
set nocompatible
let g:Powerline_symbols = 'fancy'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
Bundle "scrooloose/nerdtree"
Bundle "pangloss/vim-javascript"
Bundle "marijnh/tern_for_vim"
Bundle "Lokaltog/vim-powerline"
Bundle "tpope/vim-fugitive"

