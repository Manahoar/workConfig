set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"===========PLUGINS=============="
Plugin 'scrooloose/nerdtree' " Branche de documents


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ



" Put your non-Plugin stuff after this line

syntax on " Active la coloration des syntax
set t_Co=256 " Force le terminal à être en 256 couleurs
colorscheme new-railscasts  " Thème du vim
set number      " Affiche les numéros de ligne
set ruler       " Affiche la position du curseur
set mouse=a  " Active la souris dans vim
set ruler               " Affiche la position du curseur.
set showcmd

"========NMAP==========
 map <F8> : !gcc % && ./a.out <CR> " Enregistre et compile puis lance le fichier C


"======FONCTION DE SPLIT D'ÉCRANS========
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"========================================


nnoremap ( ()<left>  " Ferme la parenthèse et place le curseur entre les deux.
set statusline=\>%<[%02n]\ %F%(\ %m%h%w%y%r%)\ %a%=\ %8l,%c%V/%L\ (%P)


"=========FONCTION NERD-TREE=============
map <C-n> :NERDTreeToggle<CR> " Permet d'activer le plugin Nerdtree ctrl +n
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Permet de couper Nerdtree en même temps qu la fenêtre vim
"========================================


"======POWERLINE======
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"=====================

"====AUTO RELOAD======
"Permet de reload le fichier .vimrc automatiquement une fois save
if has("autocmd")
	    autocmd! bufwritepost .vimrc source ~/.vimrc
    endif
"=====================

"====SAVE WITH CTRL+Z=====
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
"========================
