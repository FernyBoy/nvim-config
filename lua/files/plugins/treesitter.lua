return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        -- La rama main ya no acepta ensure_installed; install() omite los ya instalados
        require("nvim-treesitter").install({
            "bash",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "racket",
            "regex",
            "tsx",
            "typescript",
            "vim",
            "yaml",
        })

        -- Activar el resaltado solo si hay parser y queries de highlights;
        -- si no, se conserva el resaltado clásico de Vim
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(args.match)
                if lang and vim.treesitter.query.get(lang, "highlights") then
                    pcall(vim.treesitter.start, args.buf, lang)
                end
            end,
        })
    end,
}
