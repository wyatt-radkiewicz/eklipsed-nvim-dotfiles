local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig') 
lspconfig.clangd.setup{}
lspconfig.lua_ls.setup{}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}
lspconfig.pyright.setup{
  settings = {
    python = {
		pythonPath = "/opt/homebrew/bin/python3",
    },
  },
}

lspconfig.glsl_analyzer.setup{}
