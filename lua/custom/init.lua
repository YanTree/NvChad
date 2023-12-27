local opt = vim.opt

--------------------------------- options -------------------------------------
-- One line with max chars, a gray verticaly line will hints you
-- opt.colorcolumn = "80"

opt.fileencoding = "utf-8"
opt.backup = false

-- Min visible columns or line when move cursor at editor corner
opt.scrolloff = 5
opt.sidescrolloff = 5

-- vscode format snippets i.e json files
local path = os.getenv("HOME") .. "/Library/snippets"
vim.g.lua_snippets_path = path


-- register wgsl ft
vim.filetype.add {
  extension = {
    wgsl = "wgsl",
    shader = "shader",
    hlsl = "hlsl",
  },
}
