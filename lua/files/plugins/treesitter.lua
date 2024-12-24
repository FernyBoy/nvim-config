return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local conf = require("nvim-treesitter.configs")
        conf.setup(
        {
            ensure_installed =
            {
                "arduino",
                "bash",
                "c",
                "c_sharp",
                "cpp",
                "css",
                "csv",
                "cuda",
                "dockerfile",
                "fish",
                "fortran",
                "fsharp",
                "go",
                "hjson",
                "html",
                "http",
                "java",
                "javascript",
                "json",
                "json5",
                "latex",
                "lua",
                "luadoc",
                "perl",
                "php",
                "powershell",
                "python",
                "racket",
                "regex",
                "ruby",
                "rust",
                "scss",
                "sql",
                "ssh_config",
                "tmux",
                "toml",
                "typescript",
                "vim",
                "vue",
                "xml",
                "yaml",
            },

            highlight = { enable = true },

            indent = { enable = true },
        })
    end,
}
