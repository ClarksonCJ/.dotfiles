local nnoremap = require("clarksoncj.keymap").nnoremap

local silent = { silent = true }

-- Terminal commands
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, { desc = "[a] Harpoon Mark" })
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "<C-e> Harpoon Quick Menu" })

nnoremap("<C-h>", function() require("harpoon.ui").nav_next() end, { desc = "<C-h> Next Harpoon Mark" })
nnoremap("<C-l>", function() require("harpoon.ui").nav_prev() end, { desc = "<C-l> Last Harpoon Mark" })
