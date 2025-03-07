return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
        styles = 
        {
            sidebars = "transparent",
            floats = "transparent",
        },
    },
    config = function()
        require("tokyonight").setup(
        {
            transparent = true,
        })
        vim.cmd("colorscheme tokyonight")
    end,
}

