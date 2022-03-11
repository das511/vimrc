set guioptions=
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16

"General
filetype plugin indent on
set nocompatible
set hidden
syntax enable

"Splits
set splitbelow
set splitright

"Mouse
set mouse=a
set mousehide

"Encoding
scriptencoding utf-8
set encoding=utf-8

"Indent
set smartindent
set copyindent

"Tabs
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"Visual
"set number relativenumber
set wrap linebreak nolist
set showtabline=0
set cursorline

"Searching
set ignorecase
set smartcase

"Folding
set foldnestmax=10
set foldlevel=2
set nofoldenable
set foldlevelstart=0

"More CLI
set t_Co=256
set vb
set t_ut=""

"Mappings
let mapleader = "-"

"VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'vim-airline/vim-airline' "В список плагинов
Plug 'blueshirts/darcula'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme darcula

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0

nnoremap <Space>i :PlugInstall<CR>
nnoremap <Space>u :PlugUpdate<CR>
nnoremap <Space>e :Explore<CR>
nnoremap <Space>q :wq<CR>
nnoremap <Space>w :w<CR>
