---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'onedark',

  -- cmp themeing
  cmp = {
    style = "atom",
  },


  ------------------------------ nvchad_ui modules ----------------------------
  statusline = {
    theme = "default",
    separator_style = "default",
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
  },
}


M.plugins = "custom.plugins"


-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
