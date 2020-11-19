"Vundle
if exists('g:vscode')
  "Do nothing for now
else
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugins under this
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/denite.nvim'
Plugin 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdcommenter'
Plugin 'sheerun/vim-polyglot'
Plugin 'Raimondi/delimitMate'
"Plugin 'Valloric/MatchTagAlways'
Plugin 'morhetz/gruvbox'
Plugin 'kaicataldo/material.vim'
Plugin 'hzchirs/vim-material'
Plugin 'joshdick/onedark.vim'
Plugin 'easymotion/vim-easymotion'
call vundle#end()
filetype plugin indent on

"=== Usual setup ==="
set splitbelow splitright
set cursorline
"set scrolloff=999
"set sidescrolloff=5
set so=999
set number relativenumber
set showmatch
set ignorecase
set smartcase
set hlsearch
set smarttab
set expandtab
set tabstop=2
set softtabstop=4
set shiftwidth=2
set autoindent
set number
set encoding=UTF-8
syntax on
"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"Statusline
let g:airline_section_b = '%{strftime("%c")}'
" air-line
let g:airline_powerline_fonts = 1

"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif
" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" Tabline
let g:airline#extensions#tabline#enabled = 1

"ColocScheme
"if (has('nvim'))
  "let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
"endif
"autocmd vimenter * colorscheme gruvbox
"let g:material_theme_style = 'default'
"let g:material_terminal_italics = 1
"colorscheme material
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme onedark
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
"================================================="
"===               PLUGIN SETUP                ==="
"================================================="

" === Prettier setup === "
let g:prettier#config#single_quote = 'true'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.html PrettierAsync

"=== Denite setup ==="
"call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
"" Use ripgrep in place of grep
"call denite#custom#var('grep', 'command', ['rg'])
"" Custom options for ripgrep
""   --vimgrep:  Show results with every match on it's own line
""   --hidden:   Search hidden directories and files
""   --heading:  Show the file name above clusters of matches from each file
""   --S:        Search case insensitively if the pattern is all lowercase
"call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])
"" Recommended defaults for ripgrep via Denite docs
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])
"" Remove date from buffer list
"call denite#custom#var('buffer', 'date_format', '')
"" Custom options for Denite
""   auto_resize             - Auto resize the Denite window height automatically.
""   prompt                  - Customize denite prompt
""   direction               - Specify Denite window direction as directly below current pane
""   winminheight            - Specify min height for Denite window
""   highlight_mode_insert   - Specify h1-CursorLine in insert mode
""   prompt_highlight        - Specify color of prompt
""   highlight_matched_char  - Matched characters highlight
""   highlight_matched_range - matched range highlight
"let s:denite_options = {'default' : {
"\ 'split': 'floating',
"\ 'start_filter': 1,
"\ 'auto_resize': 1,
"\ 'source_names': 'short',
"\ 'prompt': 'λ ',
"\ 'highlight_matched_char': 'QuickFixLine',
"\ 'highlight_matched_range': 'Visual',
"\ 'highlight_window_background': 'Visual',
"\ 'highlight_filter_background': 'DiffAdd',
"\ 'winrow': 1,
"\ 'vertical_preview': 1
"\ }}
"" Loop through denite options and enable them
"function! s:profile(opts) abort
  "for l:fname in keys(a:opts)
    "for l:dopt in keys(a:opts[l:fname])
      "call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    "endfor
  "endfor
"endfunction

"=== Nerdtree ==="
" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1
" Custom icons for expandable/expanded directories
let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

"================================================="
"===                KEY MAPPING                ==="
"================================================="

"=== Basic mapping ==="
let mapleader=" "
imap jj <Esc>

" Clear search highlight with esc
nnoremap <silent><esc> :noh<return><esc>

"Exit from terminal mode
tnoremap <Esc> <C-\><C-n>

" Moving between windows
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" === Emmet === "
"let g:user_emmet_expandabbr_key='<M-a>'
let g:user_emmet_leader_key = '<C-J>'

"=== Denite shortcuts ==="
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>o - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nmap <leader>t :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>o :<C-u>DeniteCursorWord grep:.<CR>
" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_acion', 'split')
endfunction
" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

" === Nerdtree shorcuts === "
  "<leader>n - Toggle NERDTree on/off
  "<leader>f - Opens current file location in NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" === coc.nvim === "
"   <leader>dd    - Jump to definition of current symbol
"   <leader>dr    - Jump to references of current symbol
"   <leader>dj    - Jump to implementation of current symbol
"   <leader>ds    - Fuzzy search current project symbols
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)
nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" === vim-jsdoc shortcuts ==="
" Generate jsdoc for function under cursor
nmap <leader>z :JsDoc<CR>
endif
