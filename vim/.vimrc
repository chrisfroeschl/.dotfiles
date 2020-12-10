" Automatically install vim-plug.
augroup PLUGGED
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
augroup end

call plug#begin('~/.vim/plugged')

    Plug 'chrisfroeschl/deathconsciousness'                     " Vim theme.
    Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Intellisense engine.
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Search utility.
    Plug 'junegunn/fzf.vim'                                     " Search utility.
    Plug 'airblade/vim-rooter'                                  " Appropiate base for searching.
    if v:version >= 700
        Plug 'airblade/vim-gitgutter'                           " Git signs.
    endif
    Plug 'leafgarland/typescript-vim'                           " TypeScript support

call plug#end()

" Automatically install missing plugins on startup.
autocmd VimEnter *
    \ if len(filter(values(g:plugs), 'isdirectory(v:val.dir)'))
    \| PlugInstall |
    \| PlugUpdate | q
    \| endif

let g:coc_global_extensions = [
            \'coc-json',
            \'coc-prettier',
            \'coc-pairs',
            \'coc-eslint',
            \'coc-emmet',
            \'coc-yaml',
            \'coc-tsserver',
            \'coc-sh',
            \'coc-markdownlint',
            \'coc-java',
            \'coc-html',
            \'coc-docthis',
            \'coc-docker',
            \'coc-css',
            \'coc-clangd',
            \'coc-angular',
            \]

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
set tabstop=4                                                   " Insert 4 spaces for a tab.
set shiftwidth=4                                                " Change the number of space character inserted for indentation.
set smarttab                                                    " Makes tabbing smarter will realize you have 2 vs 4.
set smartindent                                                 " Makes indent smart.
set autoindent                                                  " Good auto indent.
set expandtab                                                   " Converts tabs to spaces.
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
set updatetime=300                                              " Faster completion.
set timeoutlen=500                                              " By default timeoutlen is 1000 ms.
set shortmess+=c                                                " Don't pass messages to ins-completion-menu.
set guicursor=                                                  " Ignore Neovim cursor settings and go back to vim.
set colorcolumn=80                                              " Create color column to prevent going to far to the right.
set signcolumn=yes                                              " Create column for git signs.
set ruler                                                       " Show line and column number of the cursor position.
set showcmd                                                     " Show partial command.
set dictionary+=~/.vim/dict/en_common                           " What dictionary to use.
filetype plugin on                                              " Enable ftplugins.
colorscheme deathconsciousness                                  " My colorscheme.

if has("spell")
    autocmd BufRead,BufNewFile .vimrc,*.vim,*.tmac,*.ms,*.md setlocal spell
    setlocal spelllang=en_us
endif

" Disables automatic commenting on newline.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:rooter_resolve_links = 1
let g:rooter_targets = '*'

let g:fzf_history_dir = '~/.local/share/fzf-history'            " Enable per-command history.
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

" Get text in files with Rg.
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced.
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position. 
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" TAB will move between buffers.
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Map function and class text objects.
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
