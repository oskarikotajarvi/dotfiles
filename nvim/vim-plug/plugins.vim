call plug#begin('~/.vim/plugged')
" Language server and completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'octaltree/cmp-look'

" Easy commenting with nerdcommenter
Plug 'preservim/nerdcommenter'

" Lualine
Plug 'hoob3rt/lualine.nvim'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

" " Treesitter (better highlighting
" TSInstall bash dockerfile html css typescript yaml lua vim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Colorschemes
Plug 'christianchiarulli/nvcode-color-schemes.vim'

" Auto close brackets etc
Plug 'jiangmiao/auto-pairs'

" File explorer
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()
