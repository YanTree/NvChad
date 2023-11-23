local plugins = {}

plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "json",

        -- rust
        "rust",
        "wgsl",
        "wgsl_bevy",

       -- low level
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
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G",},
  }
}

return plugins
