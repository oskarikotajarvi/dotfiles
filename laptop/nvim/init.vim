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
Plugin 'neomake/neomake'
Plugin 'Valloric/MatchTagAlways'
Plugin 'joshdick/onedark.vim'
Plugin 'wellle/targets.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'dsawardekar/wordpress.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'vim-syntastic/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'jbgutierrez/vim-better-comments'
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
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set matchpairs+=<:>

"Colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

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

" Tab completing for Emmet
let g:user_emmet_expandabbr_key='<M-a>'

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Prettier
let g:prettier#autoformat = 0
let g:prettier#config#tab_width = 4
let g:prettier#config#print_width = 120

"Closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,typescript.tsx,tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"Airline
"let g:airline_theme = 'onedark'
let g:airline_theme = 'gruvbox'

"Neomake
call neomake#configure#automake('nrwi', 500)

"NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

"Better comments
let g:bettercomments_language_aliases = {'javascript': 'js'}

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
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *ts set filetype=typescript

"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
