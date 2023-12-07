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
    ["]c"] = "",
    ["[c"] = "",
    ["<leader>td"] = "",
    ["<leader>ph"] = "",
    ["<leader>rh"] = "",
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

M.gitsigns = {
  n = {
    ["<leader>g]"] = {
      function()
        if vim.wo.diff then
          return "<leader>g]"
        end
        vim.schedule(function()
          require("gitsigns").next_hunk()
        end)
        return "<Ignore>"
      end,
      "Jump to next hunk",
      opts = { expr = true },
    },

    ["<leader>g["] = {
      function()
        if vim.wo.diff then
          return "<leader>g["
        end
        vim.schedule(function()
          require("gitsigns").prev_hunk()
        end)
        return "<Ignore>"
      end,
      "Jump to prev hunk",
      opts = { expr = true },
    },

    -- Actions
    ["<leader>gB"] = {
      function()
        package.loaded.gitsigns.blame_line()
      end,
      "Blame line",
    },

    ["<leader>gd"] = {
      function()
        require("gitsigns").diffthis()
      end,
      "Diff view hunk at point",
    },

    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk at point",
    },

    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Revert hunk at point",
    },

    ["<leader>gs"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage hunk at point",
    },

    ["<leader>gu"] = {
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      "Undo stage hunk at point",
    },
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
