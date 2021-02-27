" File: .vimrc
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 27 Feb 2021 02:53:13 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Main config file for Vim.

" Plugin specific {{{

" Automatically install vim-plug. 
augroup PLUGGED
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
augroup end

call plug#begin('~/.vim/plugged')
    " Colorscheme.
    Plug 'chrisfroeschl/minimalist.vim'
    " Roff support.
    Plug 'chrisfroeschl/roff.vim'
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

" }}}

" General settings {{{

let g:mapleader = "\<Space>"
let g:maplocalleader = "-"
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_fastbrowser = 0
let g:netrw_liststyle = 1
let g:netrw_sizestyle = "b"
let g:rooter_resolve_links = 1
let g:rooter_targets = '*'

if has('folding')
    set foldcolumn=1
endif

if has('signs')
    set signcolumn=yes
endif

if has('syntax')
    syntax enable
    set colorcolumn=80
endif

if has('statusline')
    set statusline=%=%l:%L
endif

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
set laststatus=2
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
set ruler
set showcmd
set showmode
set dictionary+=~/.vim/dict/en_common
filetype plugin on
colorscheme minimalist

" }}}

" General mappings {{{

" Tab jumping.
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
" Open vimrc in a split.
nnoremap <LEADER>ev :vsplit $MYVIMRC<CR>
" Source vimrc.
nnoremap <LEADER>sv :source $MYVIMRC<CR>
" Quote surrounding.
nnoremap <LEADER>" viw<ESC>a"<ESC>hbi"<ESC>lel
nnoremap <LEADER>' viw<ESC>a'<ESC>hbi'<ESC>lel
" Unbind bad habits.
inoremap <UP> <Nop>
inoremap <DOWN> <Nop>
inoremap <RIGHT> <Nop>
inoremap <LEFT> <Nop>
" Use <CR> to confirm completion, `<C-g>u` means break undo chain at current position.
if exists('*complete_info')
  inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Hightlight trailing whitespaces.
nnoremap <LEADER>w :match SpellBad /\m\s$/<CR>
nnoremap <LEADER>W :match<CR>
nnoremap <LEADER>/ /\v
" Make count commands more accessible.
nnoremap <LEADER>cn :cnext<CR>
nnoremap <LEADER>cp :cprevious<CR>

" }}}

" Autocmd general settings {{{

if has("autocmd")

    " Read in template files.
    augroup SKELETON_TEMPLATES
      autocmd!
      autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
      " Parse special text in the templates after the read.
      autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge|normal G
    augroup END

    " Disables automatic commenting on newline.
    augroup DISABLE_COMMENTING
        autocmd!
        autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    augroup END

    if has("spell")
        " Enable spell only for specific file types.
        augroup SPELL_ENABLED
            autocmd!
            autocmd BufRead,BufNewFile .vimrc,*.man,*.t,*.roff,*.ms,*.mom,*.me,*.mm,*.tr,*.troff,*.tmac,*.md,*.tex setlocal spell
        augroup END
        if has("syntax")
            setlocal spelllang=en
        endif
    endif

endif

" }}}

" Abbreviations {{{

iabbrev <expr> lorem system('curl -s http://metaphorpsum.com/paragraphs/1')
" iabbrev @@ cfroeschl@protonmail.com
iabbrev www www.chrisfroeschl.de
iabbrev ccopy Copyright (c) Chris Fröschl.
iabbrev waht what
iabbrev tehn then
iabbrev adn and

" }}}
