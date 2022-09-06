require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
        "c", 
        "cpp", 
        "python", 
        "java", 
        "css", 
        "gitignore", 
        "html",
        "javascript",
        "json",
        "tsx",
        "typescript",
        "vim"
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}
