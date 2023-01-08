require'nvim-treesitter.configs'.setup {
    ensure_installed = { "help", "vim", "javascript", "typescript", "python", "rust", "lua", "go", "ocaml", "terraform" },
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

