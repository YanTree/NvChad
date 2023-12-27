-- overriding default plugin configs!
local M = {}

M.nvterm = {
  terminals = {
    shell = "nu.exe",
  }
}

M.treesitter = {
  ensure_installed = {
    "lua", "bash",
    "vim", "vimdoc",
    "toml", "yaml",
    "json", "xml", "ssh_config",
    "rust", "python", "cpp", "c", "c_sharp",
    "wgsl", "wgsl_bevy", "hlsl", "glsl",
    "make", "cmake",
    "markdown", "markdown_inline", "org",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    -- highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.mason = {
  ensure_installed = {
    -- at least one to avoid error
    "stylua"
  },
}

return M
