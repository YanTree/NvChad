local plugins = {}

plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua"
        "json",

        -- rust
        "rust",
        "wgsl",
        "wgsl_bevy",

        "c",
      },
    },
  },
  -----------------------------------rust--------------------------------------
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
}

return plugins
