---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",

  -- cmp themeing
  cmp = {
    style = "atom",
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "󰈚  Recent Files", "SPC f r", "Telescope oldfiles" },
      { "  Find File",    "SPC f f", "Telescope find_files" },
      { "󰈭  Find Word",    "SPC s p", "Telescope live_grep" },
      { "  Bookmarks",    "SPC m a", "Telescope marks" },
      { "  Themes",       "SPC t t", "Telescope themes" },
      { "  Mappings",     "SPC h s", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
