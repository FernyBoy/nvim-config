
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
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "basedpyright",
                    "clangd",
                    "fortls",
                    "golangci_lint_ls",
                    "gopls",
                    "hydra_lsp",
                    "jdtls",
                    "jsonnet_ls",
                    "lua_ls",
                    "mutt_ls",
                    "powershell_es",
                    "ruff",
                    "sqls",
                    "taplo",
                    "templ",
                    "texlab",
                }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities =
                require("cmp_nvim_lsp").default_capabilities()

            -- Suppress INFO signs globally
            vim.fn.sign_define(
                "DiagnosticSignInfo",
                { text = "", texthl = "" }
            )

            -- Diagnostics configuration
            vim.diagnostic.config({
                virtual_text = {
                    severity = {
                        min = vim.diagnostic.severity.ERROR
                    }
                }
            })

            -- Custom filetype
            vim.cmd [[
                au BufRead,BufNewFile *.tpp set filetype=cpp
            ]]

            -- Helper to avoid repetition
            local function setup(server, opts)
                opts = opts or {}
                opts.capabilities = capabilities
                vim.lsp.config(server, opts)
                vim.lsp.enable(server)
            end

            setup("harper_ls")
            setup("omnisharp")
            setup("clangd", {
                filetypes = { "c", "cpp", "objc", "objcpp", "tpp" }
            })
            setup("fortls")
            setup("golangci_lint_ls")
            setup("gopls")
            setup("templ")
            setup("jdtls")
            setup("denols")
            setup("quick_lint_js")
            setup("jsonnet_ls")
            setup("ltex")
            setup("texlab")
            setup("lua_ls")
            setup("powershell_es")
            setup("basedpyright")
            setup("jedi_language_server")
            setup("mutt_ls")
            setup("pylsp")
            setup("pyre")
            setup("ruff")
            setup("sqls")
            setup("taplo")
            setup("hydra_lsp")

            vim.keymap.set(
                "n",
                "K",
                vim.lsp.buf.hover,
                {}
            )
        end
    },
}
