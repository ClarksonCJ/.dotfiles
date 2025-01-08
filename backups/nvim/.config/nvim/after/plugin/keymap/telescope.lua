local Remap = require("clarksoncj.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end, { desc = "[ps] Grep for" })

nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end, { desc = "<C-p> Search Git files" })

nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files({ hidden = true })
end, { desc = "[pf] Find Files" })

nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end, { desc = "[pw] Grep String" })

nnoremap("<leader>sd", function()
        require'telescope.builtin'.diagnostics(require('telescope.themes').get_dropdown({}))
end, { desc = "[sd] Diagnostics Dropdown" })

nnoremap("<leader><space>", function()
    require('telescope.builtin').buffers()
end, { desc = "Buffers" })

nnoremap("<leader>pg", function()
    require('telescope.builtin').live_grep({ hidden = true })
end, { desc = "[pg] Live Grep"})

-- TODO: Fix this immediately
nnoremap("<leader>hh", function()
    require('telescope.builtin').help_tags()
end, { desc = "[hh] Help Tags" } )

nnoremap('<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

nnoremap("<leader>pd", require('telescope.builtin').diagnostics, { desc = "[pd] Diagnostics" })

nnoremap("<leader>vrc", function()
    require('clarksoncj.telescope').search_dotfiles({ hidden = true })
end, { desc = "[vrc] Search Dotfiles" })

nnoremap("<leader>va", function()
    require('clarksoncj.telescope').anime_selector()
end, { desc = "[va] Anime Selector" })

nnoremap("<leader>gc", function()
    require('clarksoncj.telescope').git_branches()
end, { desc = "[gc] Show Git Branches" })

nnoremap("<leader>gw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end, { desc = "[gw] Show Git Worktrees" })

nnoremap("<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end, { desc = "[gm] Create Git Worktree" })

nnoremap("<leader>km", function()
    require('telescope.builtin').keymaps()
end, { desc = "[km] Search Keymaps" } )

nnoremap("<leader>?", function()
    require('telescope.builtin').oldfiles()
end, { desc = "[?] Find recently opened files" } )
