local opt = vim.opt

--------------------------------- options -------------------------------------
-- One line with max chars, a gray verticaly line will hints you
opt.colorcolumn = "80"

opt.fileencoding = "utf-8"
opt.backup = false
-- Mostly just for plugin 'cmp'
opt.completeopt = { "menuone", "noselect" }

-- High light current line
opt.cursorline = true
-- Enable relativenumber feature
opt.relativenumber = true

-- Min visible columns or line when move cursor at editor corner
opt.scrolloff = 8
opt.sidescrolloff = 12
