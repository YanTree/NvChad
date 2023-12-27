local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "csharp_ls", "nushell" }

local custom_on_attach = function(client, bufnr)
  on_attach(client, bufnr)

  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint(bufnr, true)
  end
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = custom_on_attach,
    capabilities = capabilities,
  }
end

-- rust
require("rust-tools").setup({
  server = {
    capabilities = capabilities,
    on_attach = custom_on_attach,
  }
})

-- lspsaga package
require("lspsaga").setup({})
