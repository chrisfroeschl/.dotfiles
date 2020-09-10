call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-utils/vim-man'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'  
    Plug 'ThePrimeagen/vim-apm'
    Plug 'ThePrimeagen/vim-be-good'

    call plug#end()

"Automatically install missing plugins on startup.
autocmd VimEnter *
    \ if len(filter(values(g:plugs), 'isdirectory(v:val.dir)'))
    \| PlugInstall | q
    \| endif
