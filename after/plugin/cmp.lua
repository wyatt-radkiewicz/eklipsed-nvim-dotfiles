local cmp = require('cmp')

cmp.setup({
  -- Just use default neovim snippets
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end
  },

  -- Use bordered completion windows
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  -- Additional mappings
  mapping = cmp.mapping.preset.insert({
    ['<S-BS>'] = cmp.mapping.abort(),

    ['<S-CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },

    ['<Tab>'] = function(fallback)
      if not cmp.select_next_item() then
        if vim.bo.buftype ~= 'prompt' and has_words_before ~= nil and has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end
    end,

    ['<S-Tab>'] = function(fallback)
      if not cmp.select_prev_item() then
        if vim.bo.buftype ~= 'prompt' and has_words_before ~= nil and has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end
    end,
  }),

  -- Where to get snippet sources
  sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },
      { name = 'nvim_lsp_signature_help' },
    },
    {{ name = 'buffer' }}
  )
})

-- Search auto complete
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {{ name = 'buffer' }}
})

-- Command auto complete
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({{ name = 'path' }}, {{ name = 'cmdline' }}),
  matching = { disallow_symbol_nonprefix_matching = false }
})

