"Plugins
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
"Plugins
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'Raimondi/delimitMate'
Plugin 'alvan/vim-closetag'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'neomake/neomake'
Plugin 'Valloric/MatchTagAlways'
Plugin 'joshdick/onedark.vim'
Plugin 'wellle/targets.vim'
call vundle#end()

"Other SETup
filetype plugin indent on 
set splitbelow splitright
set cursorline
set scrolloff=1
set sidescrolloff=5
set number relativenumber
set t_ut=
set nocompatible
set showmatch
set ignorecase
set hlsearch
set smarttab
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set statusline+=%#warningmsg#
set statusline+=%*
set matchpairs+=<:>

"Colorscheme
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#abb2bf", "cterm": "145", "cterm16" : "7" }
    autocmd colorscheme * call onedark#set_highlight("normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup end
endif
colorscheme onedark

"Mapping

"Leader
let mapleader=" "

"Moving between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Insert mode movement
imap <M-h> <left>
imap <M-j> <down>
imap <M-k> <up>
imap <M-l> <right>
imap <M-m> <esc>o
imap <M-n> <esc>O
imap <C-a> <home>
imap <C-e> <end>
cmap <C-a> <home>
cmap <C-e> <end>

" Clear search highlighting with Escape key
nnoremap <silent><esc> :noh<return><esc>

"Prettier
let g:prettier#autoformat = 0
let g:prettier#config#tab_width = 4

"Prettier for PHP
"function PrettierPhpCursor()
  "let save_pos = getpos(".")
  "%! prettier --stdin --parser=php
  "call setpos('.', save_pos)
"endfunction
"" define custom command
"command PrettierPhp call PrettierPhpCursor()
"" format on save
"autocmd BufwritePre *.php PrettierPhp

"Closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,typescript.tsx,tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"Airline
let g:airline_theme = 'onedark'

"Neomake
call neomake#configure#automake('nrwi', 500)

"NerdTree
map <C-n> :NERDTreeToggle<CR>

"JSX
let g:jsx_ext_required=1

"MTA
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx' : 1,
    \ 'typescript.tsx' : 1,}

"Set filetypes
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *ts set filetype=typescript

"Colors for tabline
hi TabLine      ctermfg=254 ctermbg=238 cterm=none
hi TabLineSel   ctermfg=231 ctermbg=235 cterm=bold
hi TabLineFill  ctermfg=254 ctermbg=238 cterm=none
