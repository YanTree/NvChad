-- overriding default plugin configs!
local M = {}

M.treesitter = {
  ensure_installed = {
    "lua", "bash",
    "vim", "vimdoc",
    "toml", "yaml",
    "json", "xml", "ssh_config",
    "rust", "python", "cpp", "c", "c_sharp",
    "wgsl", "wgsl_bevy", "hlsl", "glsl",
    "make", "cmake",
    "markdown", "org",
  },
}

M.mason = {
  ensure_installed = {}
}

return M
