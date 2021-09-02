source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/keys/mappings.vim
source ~/.config/nvim/vim-plug/lsp-config.vim
source ~/.config/nvim/vim-plug/luatree-config.vim
source ~/.config/nvim/vim-plug/nvcode.vim
source ~/.config/nvim/vim-plug/telescope-config.vim

luafile ~/.config/nvim/lua/cmp-config.lua
" npm install -g @angular/langugage-server vscode-langservers-extracted @tailwindcss/langugage-server vim-language-server
luafile ~/.config/nvim/lua/lsp-typescript.lua
luafile ~/.config/nvim/lua/lsp-html.lua
luafile ~/.config/nvim/lua/lsp-css.lua
luafile ~/.config/nvim/lua/lsp-tailwind.lua
luafile ~/.config/nvim/lua/lsp-angular.lua
luafile ~/.config/nvim/lua/lsp-vim.lua
luafile ~/.config/nvim/lua/nvcode-config.lua
luafile ~/.config/nvim/lua/lualine-config.lua

" Autocomand to remember last editing position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
" Fix possibly broken syntax when entering buffer
autocmd BufEnter * syntax sync fromstart
