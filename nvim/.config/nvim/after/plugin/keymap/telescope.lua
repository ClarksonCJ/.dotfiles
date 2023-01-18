local Remap = require("clarksoncj.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pg", function()
    require('telescope.builtin').live_grep()
end)

nnoremap("<leader>sd", function()
        require'telescope.builtin'.diagnostics(require('telescope.themes').get_dropdown({}))
end)

nnoremap("<leader><space>", function()
    require('telescope.builtin').buffers()
end)

nnoremap("<leader>pg", require('telescope.builtin').live_grep)
nnoremap("<leader>?", require('telescope.builtin').oldfiles)

-- TODO: Fix this immediately
nnoremap("<leader>hh", function()
    require('telescope.builtin').help_tags()
end)

nnoremap('<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

nnoremap("<leader>pd", require('telescope.builtin').diagnostics)

nnoremap("<leader>vrc", function()
    require('clarksoncj.telescope').search_dotfiles({ hidden = true })
end)
nnoremap("<leader>va", function()
    require('clarksoncj.telescope').anime_selector()
end)
nnoremap("<leader>gc", function()
    require('clarksoncj.telescope').git_branches()
end)
nnoremap("<leader>gw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end)
nnoremap("<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end)

nnoremap("<leader>km", function()
    require('telescope.builtin').keymaps()
end)

nnoremap("<leader>?", function()
    require('telescope.builtin').oldfiles()
end, { desc = "[?] Find recently opened files" } )

nnoremap("<leader>/", function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end,  { desc = "[/] Fuzzy search in buffer" })
