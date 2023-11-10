local opt = vim.opt

--------------------------------- options -------------------------------------
-- One line with max chars, otherwise with a gray verticaly line to hints you,
-- it's make read code easily
opt.colorcolumn = "80"

opt.fileencoding = "utf-8"
opt.backup = false
-- Mostly just for plugin 'cmp'
opt.completeopt = { "menuone", "noselect" }

-- High light current line
opt.cursorline = true
-- Enable relativenumber feature
opt.relativenumber = true

-- Indenting

