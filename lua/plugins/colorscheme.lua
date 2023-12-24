return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000, -- load this plugin before any other plugin

    -- config function runs whenever lazy loads this plugin
    config = function()
        require("tokyonight").setup({
            styles = {
                comments = {italic = false },
            },
        
        })
        -- load the colorscheme here (we can load it one of two-ways)
        -- vim.cmd[[colorscheme tokyonight]]
        vim.cmd.colorscheme("tokyonight")
    end,
}
