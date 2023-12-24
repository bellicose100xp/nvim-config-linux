return {
    "nvim-treesitter/nvim-treesitter",   -- Plugin path
    run = ":TSUpdate",                   -- Optional: Automatically update treesitter syntax
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java" },
            auto_install = true, -- It auto-installs parsers for new language the first time we open a file of that language.
            highlight = { enable = true },
        })
    end,
}
