local overrides = require "custom.configs.overrides"

return {
  ------------------------------ default plugins ------------------------------
  {
    "NvChad/nvterm",
    opts = overrides.nvterm,

    config = function(_, opts)
      require "base46.term"
      require("nvterm").setup(opts)
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "nvimdev/lspsaga.nvim"
      },
      {
        "simrat39/rust-tools.nvim",
        ft = "rust",
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require "custom.configs.conform"
    end,
  },

  { "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,

    config = function(_, opts)
      dofile(vim.g.base46_cache .. "syntax")
      require("nvim-treesitter.configs").setup(opts)

        -- register wgsl ft
        vim.filetype.add {
          extension = {
            wgsl = "wgsl",
            shader = "shader",
            hlsl = "hlsl",
          },
        }
    end,
  },

  { "williamboman/mason.nvim", opts = overrides.mason },
}
