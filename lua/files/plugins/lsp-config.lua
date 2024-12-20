return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup(
            {
                ensure_installed =
                {
                    "harper_ls",
                    "omnisharp",
                    "clangd",
                    "harper_ls",
                    "fortls",
                    "golangci_lint_ls",
                    "gopls",
                    "templ",
                    "jdtls",
                    "denols",
                    "quick_lint_js",
                    "jsonnet_ls",
                    "ltex",
                    "texlab",
                    "textlsp",
                    "lua_ls",
                    "powershell_es",
                    "basedpyright",
                    "jedi_language_server",
                    "mutt_ls",
                    "pylsp",
                    "pylyzer",
                    "pyre",
                    "ruff",
                    "sourcery",
                    "sqls",
                    "taplo",
                    "hydra_lsp",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.harper_ls.setup({})
            lspconfig.omnisharp.setup({})
            lspconfig.clangd.setup({})
            lspconfig.harper_ls.setup({})
            lspconfig.fortls.setup({})
            lspconfig.golangci_lint_ls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.templ.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.denols.setup({})
            lspconfig.quick_lint_js.setup({})
            lspconfig.jsonnet_ls.setup({})
            lspconfig.ltex.setup({})
            lspconfig.texlab.setup({})
            lspconfig.textlsp.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.powershell_es.setup({})
            lspconfig.basedpyright.setup({})
            lspconfig.jedi_language_server.setup({})
            lspconfig.mutt_ls.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.pylyzer.setup({})
            lspconfig.pyre.setup({})
            lspconfig.ruff.setup({})
            lspconfig.sourcery.setup({})
            lspconfig.sqls.setup({})
            lspconfig.taplo.setup({})
            lspconfig.hydra_lsp.setup({})

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        end
    },
}
