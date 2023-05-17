local Remap = require("clarksoncj.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>gl", ":GoLint<CR>", { desc = "[gl] GoLint" })
nnoremap("<leader>gat", ":GoAddTag<CR>", { desc = "[gat] GoAddTag" })
nnoremap("<leader>grt", ":GoRmTag<CR>", { desc = "[grt] GoRmTag" })
nnoremap("<leader>goc", ":GoCmt<CR>", { desc = "[goc] GoCmt" })
nnoremap("<leader>gtt", ":GoTest<CR>", { desc = "[gtt] GoTest" })
nnoremap("<leader>gfs", ":GoFillStruct<CR>", { desc = "[gfs] GoFillStruct" })
nnoremap("<leader>gfsw", ":GoFillSwitch<CR>", { desc = "[gfsw] GoFillStruct" })
nnoremap("<leader>gfi", ":GoIfErr<CR>", { desc = "[gfi] GoIfErr" })
nnoremap("<leader>gfp", ":GoFixPlurals<CR>", { desc = "[gfp] GoFixPlurals" })
nnoremap("<leader>gdd", ":GoDoc<CR>", { desc = "[gdd] GoDoc" })
nnoremap("<leader>gdb", ":GoDebug<CR>", { desc = "[gdb] GoDebug" })
