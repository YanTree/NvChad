local opt = vim.opt;
local g = vim.g;

--------------------------------- options -------------------------------------
-- One line with max chars, otherwise with a gray verticaly line to hints you,
-- it's make read code easily
opt.colorcolumn = "80"

opt.fileencoding = "utf-8"
opt.backup = false

-- High light current line
opt.cursorline = true
-- Enable relativenumber feature
opt.relativenumber = true

-- Indenting

