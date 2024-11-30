local lsp = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup specific language servers
lsp.clangd.setup{
  capabilities = capabilities
}
lsp.pyright.setup{
  capabilities = capabilities
}

-- Make it so that we dont get huge log files
vim.lsp.set_log_level(vim.lsp.log_levels.ERROR)

