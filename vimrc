set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'janko-m/vim-test'
Plugin 'Python.vim'
Plugin 'a.vim'
Plugin 'c.vim'
Plugin 'altercation/vim-colors-solarized'


" END VUNDLE-managed Plugin list
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized

 set autoindent
 set smartindent
 set noexpandtab
 set tabstop=4
 set shiftwidth=4
 
 set colorcolumn=110
 highlight ColorColumn ctermbg=darkgrey
 
 augroup project
     autocmd!
     autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
 augroup END
 
 let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
 
 
 let  g:C_UseTool_cmake    = 'yes' 
 let  g:C_UseTool_doxygen = 'yes' 
 
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 
 " let NERDTreeIgnore=['.vim$', '~$', '.tmp', '.o', '.a']
 let NERDTreeIgnore = ['.o$', '.a$', '.tmp', '.swp']
 
 
 " Bookmarks not working. Commenting out for ts
 "let NERDTreeBookmarksFile = ~/.vim/bundle/nerdtree/bookmarks
 
 
 :inoremap ( ()<Esc>i
 :inoremap [ []<Esc>i
 :inoremap { {<CR><BS>}<Esc>ko
 
 :imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
 
 "" Enable folding
 set foldmethod=syntax
 set foldlevel=99
 "
 
 " Enable folding with the spacebar
 nnoremap <space> za
 " SimplyFold stuff
 let g:SimpylFold_docstring_preview = 1
 autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
 autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
 "PEP8 for Python
 set nomodeline
 " au BufNewFile,BufRead *.py  set tabstop=4  set softtabstop=4  set shiftwidth=4  set textwidth=79  set expandtab  set autoindent  set fileformat=unix  so ~/.vim/scripts/python.vim
" au BufNewFile,BufRead *.py   set tabstop=4   
"     / softtabstop=4   
"     / shiftwidth=4   
"     / textwidth=79   
" 	 / foldmethod=indent
"     / expandtab   
"     / autoindent   
"     / fileformat=unix  
" 	/ so ~/.vim/scripts/python.vim
" 
