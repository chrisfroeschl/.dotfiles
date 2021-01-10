" File: .vimrc
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 09 Jan 2021 09:50:07 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Main config file for Vim.

" Automatically install vim-plug.
augroup PLUGGED
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
augroup end

call plug#begin('~/.vim/plugged')
    " Intellisense engine.
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Search utility.
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Search utility.
    Plug 'junegunn/fzf.vim'
    " Appropiate base for searching.
    Plug 'airblade/vim-rooter'
    " Git signs.
    if version >= 730
        Plug 'airblade/vim-gitgutter'
    endif
    " TypeScript support
    Plug 'leafgarland/typescript-vim'

call plug#end()

if has('syntax') && has('eval')
    packadd! matchit
endif

let g:mapleader = "\<Space>"
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_fastbrowser = 0
let g:netrw_liststyle = 1
let g:netrw_sizestyle = "b"
let g:rooter_resolve_links = 1
let g:rooter_targets = '*'
let b:nroff_is_groff = 1
let nroff_space_errors = 1
let b:preprocs_as_sections = 1

syntax enable
set hidden
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set pumheight=10
set cmdheight=2
set iskeyword+=-
set splitbelow
set splitright
set t_Co=16
set conceallevel=0
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set noswapfile
set nobackup
set nowritebackup
set laststatus=0
set relativenumber
set nu
set incsearch
set ignorecase
set smartcase
set hlsearch
set shortmess-=S
set cursorline
set background=dark
set showtabline=2
set updatetime=100
set timeoutlen=500
set shortmess+=c
set guicursor=
set colorcolumn=80
set signcolumn=yes
set ruler
set showcmd
set showmode
set dictionary+=~/.vim/dict/en_common
filetype plugin on
colorscheme theme

if has("spell")
    autocmd BufRead,BufNewFile .vimrc,*.man,*.t,*.roff,*.ms,*.mom,*.me,*.mm,*.tr,*.troff,*.tmac,*.md,*.tex setlocal spell
    if has("syntax")
        setlocal spelllang=en
    endif
endif

" Disables automatic commenting on newline.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

if has("autocmd")
    augroup templates
      au!
      " Read in template files.
      autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")

      " Parse special text in the templates after the read.
      autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge|normal G
    augroup END
endif
