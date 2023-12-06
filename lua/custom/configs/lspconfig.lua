local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- lsp for c# language
lspconfig.csharp_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
