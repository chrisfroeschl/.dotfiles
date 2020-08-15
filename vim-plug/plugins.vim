" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Color Theme
    Plug 'gruvbox-community/gruvbox'
    " Intellisense engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Undo history 
    Plug 'mbbill/undotree'
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
    " Latex
    Plug 'donRaphaco/neotex', { 'for': 'tex' }
    " Training
    Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}

    call plug#end()

"Automatically install missing plugins on startup
autocmd VimEnter *
    \ if len(filter(values(g:plugs), 'isdirectory(v:val.dir)'))
    \| PlugInstall | q
    \| endif
