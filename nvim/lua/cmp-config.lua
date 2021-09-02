vim.o.completeopt = "menuone,noselect"
vim.cmd [[set shortmess+=c]]

local cmp = require('cmp')
  cmp.setup {
    mapping = {
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },

-- npm install -g @angular/language-server
    sources = {
      { name = 'buffer' },
       { name = 'nvim_lsp' }, 
       { name = 'look' },
       { name = 'buffer' },
       { name = 'path' },
       { name = 'calc' },
       { name = 'nvim_lua' },
    },
  }
