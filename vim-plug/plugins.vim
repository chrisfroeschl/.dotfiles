" Auto-install vim-plug.
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Intellisense engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Typscript Syntax Support
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'leafgarland/typescript-vim'
    " Man pages
    Plug 'vim-utils/vim-man'
    " Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Git visualization & wrapper
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Commenter
    Plug 'preservim/nerdcommenter'  
    " Practice
    Plug 'ThePrimeagen/vim-apm'
    Plug 'ThePrimeagen/vim-be-good'

    call plug#end()

"Automatically install missing plugins on startup.
autocmd VimEnter *
    \ if len(filter(values(g:plugs), 'isdirectory(v:val.dir)'))
    \| PlugInstall | q
    \| endif
