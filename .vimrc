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
syntax on
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=es
set history=70
set nomodeline
"set mouse= "aprender a usar el modo visual para deshacerse de esta linea.
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
set path+=**
set wildmenu
"set cursorline           " highlight current line
map <F2> :NERDTreeTabsToggle<CR>

let g:rainbow_active = 1

" Zeal para docu offline.
nnoremap <leader>z :!zeal --query <cword> > /dev/null 2>&1 &<CR><CR>

" Plugin de ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


autocmd FileType css set omnifunc=csscomplete#CompleteCSS
au BufNewFile,BufRead *.vhost set filetype=vcl
au BufNewFile,BufRead *.vcl set filetype=vcl

" Deshabilitamos todas estas porque usamos YouCompleteMe en vez de las tags habituales.
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja

" Remap code completion to Ctrl+Space 
inoremap <Nul> <C-x><C-o>
" Remap Ctrl+t to new tab
noremap <Leader>t :tabe <CR>
noremap <Leader>x :pclose <CR>
noremap <Leader>q :wq<CR>
noremap <Leader>n :let @/ = ""<CR>
noremap <Leader>y "+y<CR>

"Javascript time! 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal commentstring=#\ %s
" let g:pymode_lint_write = 0
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

" Workspace
noremap <Tab> :WSNext<CR>
noremap <S-Tab> :WSPrev<CR>
noremap <Leader><Tab> :WSClose<CR>
noremap <Leader><S-Tab> :WSClose!<CR>
noremap <C-t> :tabe<CR>

cabbrev bonly WSBufOnly
let g:workspace_powerline_separators = 1
let g:workspace_tab_icon = "\uf00a"
let g:workspace_left_trunc_icon = "\uf0a8"
let g:workspace_right_trunc_icon = "\uf0a9"

let g:UltiSnipsExpandTrigger="<C-s>"

vnoremap J :m '>+1gv<cr>gv
vnoremap K :m '<-2gv<cr>gv

"Coloritos chulos.
"
set t_Co=256
colorscheme elflord

let g:ycm_min_num_of_chars_for_completion = 10
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:jedi#auto_initialization = 1
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc']

" Para apt-vim
execute pathogen#infect()
call pathogen#helptags()
"


"au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif
