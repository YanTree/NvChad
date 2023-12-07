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

    -- new buffer
    ["<leader>b"] = "",
    ["<leader>ch"] = "",

    -- NvimTree
    ["<C-n>"] = "",
    ["<leader>e"] = "",

    -- Telescope
    ["<leader>fo"] = "",
    ["<leader>fw"] = "",
    ["<leader>fb"] = "",
    ["<leader>fz"] = "",
    ["<leader>gt"] = "",
    ["<leader>cm"] = "",

    -- Gitsigns 
    ["<leader>gb"] = "",
  },
}

-- override default mappings
M.general = {
  i = {
    -- Go to beginning and end
    ["<C-a>"] = { "<ESC>^i", "Beginning of lne" },
    ["<C-e>"] = { "<End>", "End of lne" },
  },
  n = {
    -- Copy all
    ["<C-a>"] = { "<cmd> %y+ <CR>", "Copy whole file" },

    -- about buffer
    ["<leader>bn"] = { "<cmd> enew <CR>", "New buffer" },
    -- about help
    ["<leader>hs"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
  },
  v = {
    -- Move selected lines up or down
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line up" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line down" },
  },
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>op"] = { "<cmd> NvimTreeToggle <CR>", "Project sidebar" },

    -- focus
    ["<leader>oP"] = { "<cmd> NvimTreeFocus <CR>", "Find file in Project sidebar" },
  },
}

M.telescope = {
  n = {
    -- file
    ["<leader> "]  = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>fr"] = { "<cmd> Telescope oldfiles <CR>", "Recent files" },
    -- buffer
    ["<leader>bb"] = { "<cmd> Telescope buffers <CR>", "Switch buffers" },
    -- search
    ["<leader>ss"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Search in current buffer" },
    ["<leader>sp"] = { "<cmd> Telescope live_grep <CR>", "Search in current project" },
    -- git
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status" },
    ["<leader>gb"] = { "<cmd> Telescope git_branches <CR>", "Git branches" },
    ["<leader>gff"] = { "<cmd> Telescope git_files <CR>", "Find file" },
    ["<leader>gfl"] = { "<cmd> Telescope git_bcommits <CR>", "File's commit history" },
    ["<leader>gl"] = { "<cmd> Telescope git_commits <CR>", "Git commits history" },
  },
}

M.lsp = {
  n = {
    ["<leader>fm"] = {

      function()
        require("conform").format()
      end,
      "format with conform",
    },
  },
}

return M
