" File: .vimrc
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Mon 21 Dec 2020 03:02:06 PM CET
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

    Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Intellisense engine.
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Search utility.
    Plug 'junegunn/fzf.vim'                                     " Search utility.
    Plug 'airblade/vim-rooter'                                  " Appropiate base for searching.
    if version >= 730
        Plug 'airblade/vim-gitgutter'                           " Git signs.
    endif
    Plug 'leafgarland/typescript-vim'                           " TypeScript support

call plug#end()

" Automatically install missing plugins on startup.
if has("autocmd")
    autocmd VimEnter *
        \ if len(filter(values(g:plugs), 'isdirectory(v:val.dir)'))
        \| PlugInstall |
        \| PlugUpdate | q
        \| endif
endif

let g:mapleader = "\<Space>"                                    " Set leader key.
let g:netrw_browse_split = 4                                    " act like 'P' (ie. open previous window)
let g:netrw_winsize = 25                                        " Size of the vim explorer.
let g:netrw_banner = 0                                          " Enable banner.
let g:netrw_fastbrowser = 0                                     " Never re-use directory listings
let g:netrw_liststyle = 1                                       " Long listing.
let g:netrw_sizestyle = "b"                                     " Size in bytes.

syntax enable                                                   " Enable syntax highlighting.
set hidden                                                      " TextEdit might fail if hidden is not set.
set nowrap                                                      " Display long lines as just one line.
set encoding=utf-8                                              " The encoding displayed.
set fileencoding=utf-8                                          " The encoding written to files.
set pumheight=10                                                " Makes pop menu smaller.
set cmdheight=2                                                 " More space for displaying messages.
set iskeyword+=-                                                " Treat dash seperated words as a word text object.
set splitbelow                                                  " Horizontal splits will automatically be below.
set splitright                                                  " Vertical splits will automatically be to the right.
set t_Co=256                                                    " Support 256 colors.
set conceallevel=0                                              " So that I can see `` in markdown files.
set tabstop=8                                                   " Insert 4 spaces for a tab.
set softtabstop=4	                                        " Number of spaces a tab counts for while editing.
set shiftwidth=4                                                " Change the number of space character inserted for indentation.
set expandtab                                                   " Converts tabs to spaces.
set smartindent                                                 " Makes indent smart.
set autoindent                                                  " Good auto indent.
set noswapfile                                                  " Avoid creating swap files.
set nobackup                                                    " This is recommended by coc.
set nowritebackup                                               " This is recommended by coc. 
set laststatus=0                                                " Always display the status line.
set relativenumber                                              " Line numbers.
set nu                                                          " Current line number.
set incsearch                                                   " Activate incremental search.
set ignorecase                                                  " Ignore casing in searches.
set smartcase                                                   " Consider casing if there is an uppercase letter.
set hlsearch                                                    " Highlight search matches.
set shortmess-=S                                                " Show index of search matches.
set cursorline                                                  " Enable highlighting of the current line.
set background=dark                                             " Set background color.
set showtabline=2                                               " Always show tabs.
set updatetime=100                                              " Faster completion.
set timeoutlen=500                                              " By default timeoutlen is 1000 ms.
set shortmess+=c                                                " Don't pass messages to ins-completion-menu.
set guicursor=                                                  " Ignore Neovim cursor settings and go back to vim.
set colorcolumn=80                                              " Create color column to prevent going to far to the right.
set signcolumn=yes                                              " Create column for git signs.
set ruler                                                       " Show line and column number of the cursor position.
set showcmd                                                     " Show partial command.
set dictionary+=~/.vim/dict/en_common                           " What dictionary to use.
filetype plugin on                                              " Enable ftplugins.
colorscheme theme                                               " My colorscheme.

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

if has("autocmd")
    augroup templates
      au!
      " read in template files
      autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")

      " parse special text in the templates after the read
      autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge|normal G
    augroup END
endif
