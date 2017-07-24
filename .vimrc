version 7.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
" El boton central del raton hace control+v
map! <S-Insert> <MiddleMouse>
" What?!
map <M-,> <ESC>
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
let mapleader=","


"Colores
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=es
set history=70
set nomodeline
set mouse= "aprender a usar el modo visual para deshacerse de esta linea.
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set nu "Numeros de linea.
set foldcolumn=3         " 2 lines of column for fold showing, always
set foldmethod=syntax
set foldlevelstart=99
set ignorecase  "Busca sin importar mayusculas
set enc=utf-8            " UTF-8 Default encoding
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab  "indentaciones de cuatro espacios, como manda el FSM.
set si ci ai
set hlsearch
"set cursorline           " highlight current line
map <F2> :NERDTreeTabsToggle<CR>
nnoremap <silent> <F3> :TlistToggle<CR>

" Zeal para docu offline.
nnoremap <leader>z :!zeal --query <cword> > /dev/null 2>&1 &<CR><CR>

" Plugin de ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Coloritos chulos.
set t_Co=256 
colorscheme elflord

autocmd FileType css set omnifunc=csscomplete#CompleteCSS
au BufNewFile,BufRead *.vcl setf vcl
au BufNewFile,BufRead *.vhost setf vcl
" Deshabilitamos todas estas porque usamos YouCompleteMe en vez de las tags habituales.
""autocmd FileType python set omnifunc=pythoncomplete#Complete
""autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
""autocmd FileType php set omnifunc=phpcomplete#CompletePHP
""autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja

" Remap code completion to Ctrl+Space 
inoremap <Nul> <C-x><C-o>
" Remap Ctrl+t to new tab
noremap <Leader>t :tabe <CR>
noremap <Leader>x :pclose <CR>
noremap <Leader>q :wq<CR>
noremap <Leader>n :let @/ = ""<CR>

"Javascript time! 
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType javascript call tern#Enable()
autocmd FileType javascript runtime after/ftplugin/javascript_tern.vim
autocmd FileType html set ft=html.javascript_tern
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType markdown runtime after/ftplugin/markdown/instant-markdown.vim
autocmd FileType python setlocal commentstring=#\ %s
let g:pymode_lint_write = 0
let g:jedi#use_tabs_not_buffers = 1
let g:ackprg = 'ag --vimgrep'

"Emmet activado como plugin, utiliza ' <C-y> , '

" Status Powerline 
set laststatus=2
set nocompatible
let g:Powerline_symbols = 'fancy'

"Emmet 
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" fix meta-keys which generate <Esc>a .. <Esc>z
let c='a'
while c <= 'z'
  exec "set <M-".toupper(c).">=\e".c
  exec "imap \e".c." <M-".toupper(c).">"
  let c = nr2char(1+char2nr(c))
endw

" Bundles instalados con Vundle. Instalar con 'vim +BundleInstall'

" let Vundle manage Vundle
" required! 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
Bundle "scrooloose/nerdtree"
Bundle "pangloss/vim-javascript"
Bundle "marijnh/tern_for_vim"
Bundle "Lokaltog/vim-powerline"
Bundle "tpope/vim-fugitive"
Bundle "suan/vim-instant-markdown"
Bundle "jiangmiao/auto-pairs"
Bundle "flazz/vim-colorschemes"
Bundle 'ntpeters/vim-better-whitespace'
execute pathogen#infect()
call pathogen#helptags()
