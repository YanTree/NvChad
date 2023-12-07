local opts = {
  formatters_by_ft = {
    lua = { "stylua" },
  },
}

require("conform").setup(opts)
