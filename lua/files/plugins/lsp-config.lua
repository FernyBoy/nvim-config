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
                    "ts_ls",
                    "hydra_lsp",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")

            -- Suppress INFO signs globally
            vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "" })

            -- Configure diagnostic display
            vim.diagnostic.config({
                virtual_text = {
                    severity = { min = vim.diagnostic.severity.WARN },
                },
                signs = {
                    severity = { min = vim.diagnostic.severity.WARN },
                },
                underline = {
                    severity = { min = vim.diagnostic.severity.WARN },
                },
            })

            lspconfig.harper_ls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.omnisharp.setup(
            {
                capabilities = capabilities
            })
            lspconfig.clangd.setup(
            {
                capabilities = capabilities
            })
            lspconfig.harper_ls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.fortls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.golangci_lint_ls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.gopls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.templ.setup(
            {
                capabilities = capabilities
            })
            lspconfig.jdtls.setup(
            {
                capabilities = capabilities,
            })
            lspconfig.denols.setup(
            {
                capabilities = capabilities
            })
            lspconfig.quick_lint_js.setup(
            {
                capabilities = capabilities
            })
            lspconfig.jsonnet_ls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.ltex.setup(
            {
                capabilities = capabilities
            })
            lspconfig.texlab.setup(
            {
                capabilities = capabilities
            })
            lspconfig.textlsp.setup(
            {
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.powershell_es.setup(
            {
                capabilities = capabilities
            })
            lspconfig.basedpyright.setup(
            {
                capabilities = capabilities
            })
            lspconfig.jedi_language_server.setup(
            {
                capabilities = capabilities
            })
            lspconfig.mutt_ls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.pylsp.setup(
            {
                capabilities = capabilities
            })
            lspconfig.pylyzer.setup(
            {
                capabilities = capabilities
            })
            lspconfig.pyre.setup(
            {
                capabilities = capabilities
            })
            lspconfig.ruff.setup(
            {
                capabilities = capabilities
            })
            --lspconfig.sourcery.setup(
            --{
                --capabilities = capabilities
            --})
            lspconfig.sqls.setup(
            {
                capabilities = capabilities
            })
            lspconfig.taplo.setup(
            {
                capabilities = capabilities
            })
            lspconfig.hydra_lsp.setup(
            {
                capabilities = capabilities
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        end
    },
}
