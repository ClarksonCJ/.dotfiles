local nnoremap = require("clarksoncj.keymap").nnoremap
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

nnoremap( "<leader>a", function()
    harpoon:list():add()
end, { desc = "[a] Harpoon Mark" })

-- nnoremap("<C-e>", function()
--     harpoon.ui:toggle_quick_menu(harpoon:list())
-- end, { desc = "<C-e> Harpoon Quick Menu" })

-- Toggle previous & next buffers stored within Harpoon list
nnoremap("<C-h>", function()
    harpoon:list():prev()
end, { desc = "<C-h> Next Harpoon Mark" })

nnoremap("<C-l>", function()
    harpoon:list():next()
end, { desc = "<C-l> Last Harpoon Mark" })

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

nnoremap( "<C-e>", function()
    toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })
