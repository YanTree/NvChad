local M = {}

-- Disable default keybinding
M.disabled = {
  i = {
    -- go to  beginning and end
    ["<C-b>"] = "",
    ["<C-e>"] = "",
  },
  n = {
    -- save
    ["<C-s>"] = "",

    -- Copy all
    ["<C-c>"] = "",
  },
}


M.general = {
  i = {
    -- Go to beginning and end
    ["<C-a>"] = { "<ESC>^i", "Beginning of lne"},
    ["<C-e>"] = { "<End>", "End of lne"},
  },
  n = {
    -- Copy all
    ["<yA>"] = { "<cmd> %y+ <CR>", "Copy whole file" },
  },
  v = {
    -- Move selected lines up or down
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line up" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line down" },
  }
}

return M
