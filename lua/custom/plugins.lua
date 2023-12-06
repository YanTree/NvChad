local plugins = {}

plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua", "bash",
        "vim", "vimdoc",
        "toml", "yaml",
        "json", "xml", "ssh_config",
        "rust", "python", "cpp", "c", "c_sharp",
        "wgsl", "wgsl_bevy", "hlsl", "glsl",
        "make", "cmake",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      require("core.utils").lazy_load "nvim-lspconfig"
    end,
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  ---------------------------------rust--------------------------------------
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
