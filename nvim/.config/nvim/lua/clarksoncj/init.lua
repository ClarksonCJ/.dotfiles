require("clarksoncj.set")
require("clarksoncj.packer")
require("clarksoncj.neogit")
require("clarksoncj.debugger")
require("clarksoncj.rtp")
require("clarksoncj.evil_line")
require("clarksoncj.devcontainer")

local augroup = vim.api.nvim_create_augroup
local ClarksoncjGroup = augroup('clarksoncj', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ClarksoncjGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

autocmd({"BufWritePre"}, {
    group = ClarksoncjGroup,
    pattern = "*.go",
    callback = function()
        require('go.format').gofmt()
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
