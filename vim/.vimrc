" File: .vimrc
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Tue 22 Dec 2020 01:50:07 PM CET
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

" Automatically install missing plugins on startup.
if has("autocmd")
    autocmd VimEnter *
        \ if len(filter(values(g:plugs), 'isdirectory(v:val.dir)'))
        \| PlugInstall |
        \| PlugUpdate | q
        \| endif
endif
" Set leader key.
let g:mapleader = "\<Space>"
" act like 'P' (ie. Open previous window)
let g:netrw_browse_split = 4
" Size of the vim explorer.
let g:netrw_winsize = 25
" Disable banner.
let g:netrw_banner = 0
" Never re-use directory listings
let g:netrw_fastbrowser = 0
" Long listing.
let g:netrw_liststyle = 1
" Size in Bytes.
let g:netrw_sizestyle = "b"

" Enable syntax highlighting.
syntax enable
" TextEdit might fail if hidden is not set.
set hidden
" Display long lines as just one line.
set nowrap
" The encoding displayed.
set encoding=utf-8
" The encoding written to files.
set fileencoding=utf-8
" Makes pop menu smaller.
set pumheight=10
" More space for displaying messages.
set cmdheight=2
" Treat dash seperated words as a word text object.
set iskeyword+=-
" Horizontal splits will automatically be below.
set splitbelow
" Vertical splits will automatically be to the right.
set splitright
" Support 16 colors.
set t_Co=16
" So that I can see `` in markdown files.
set conceallevel=0
" Insert 8 spaces for a tab.
set tabstop=8
" Number of spaces a tab counts for while editing.
set softtabstop=4
" Change the number of space character inserted for indentation.
set shiftwidth=4
" Converts tabs to spaces.
set expandtab
" Makes indent smart.
set smartindent
" Good auto indent.
set autoindent
" Avoid creating swap files.
set noswapfile
" This is recommended by coc.
set nobackup
" This is recommended by coc.
set nowritebackup
" Always display the status line.
set laststatus=0
" Line numbers.
set relativenumber
" Current line number.
set nu
" Activate incremental search.
set incsearch
" Ignore casing in searches.
set ignorecase
" Consider casing if there is an uppercase letter.
set smartcase
" Highlight search matches.
set hlsearch
" Show index of search matches.
set shortmess-=S
" Enable highlighting of the current line.
set cursorline
" Set background color.
set background=dark
" Always show tabs.
set showtabline=2
" Faster completion.
set updatetime=100
" By default timeoutlen is 1000 ms.
set timeoutlen=500
" Don't pass messages to ins-completion-menu.
set shortmess+=c
" Ignore Neovim cursor settings and go back to vim.
set guicursor=
" Create color column to prevent going to far to the right.
set colorcolumn=80
" Create column for git signs.
set signcolumn=yes
" Show line and column number of the cursor position.
set ruler
" Show partial command.
set showcmd
" Show current mode.
set showmode
" What dictionary to use.
set dictionary+=~/.vim/dict/en_common
" Enable ftplugins.
filetype plugin on
" My colorscheme.
colorscheme theme

if has("spell")
    autocmd BufRead,BufNewFile .vimrc,*.man,*.t,*.roff,*.ms,*.mom,*.me,*.mm,*.tr,*.troff,*.tmac,*.md,*.tex setlocal spell
    if has("syntax")
        setlocal spelllang=en
    endif
endif

" Disables automatic commenting on newline.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:rooter_resolve_links = 1
let g:rooter_targets = '*'

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" TAB will move between buffers.
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

let b:nroff_is_groff = 1
let nroff_space_errors = 1

if has("autocmd")
    augroup templates
      au!
      " Read in template files.
      autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")

      " Parse special text in the templates after the read.
      autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge|normal G
    augroup END
endif
