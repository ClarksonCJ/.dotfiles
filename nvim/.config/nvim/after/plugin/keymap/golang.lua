local Remap = require("clarksoncj.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>gl", ":GoLint<CR>")
nnoremap("<leader>gat", ":GoAddTag<CR>")
nnoremap("<leader>grt", ":GoRmTag<CR>")
nnoremap("<leader>goc", ":GoCmt<CR>")
nnoremap("<leader>gtt", ":GoTest<CR>")
nnoremap("<leader>gfs", ":GoFillStruct<CR>")
nnoremap("<leader>gfsw", ":GoFillSwitch<CR>")
nnoremap("<leader>gfi", ":GoIfErr<CR>")
nnoremap("<leader>gfp", ":GoFixPlurals<CR>")
nnoremap("<leader>gdd", ":GoDoc<CR>")
nnoremap("<leader>gdb", ":GoDebug<CR>")
