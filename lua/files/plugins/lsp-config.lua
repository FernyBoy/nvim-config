
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                -- Los servidores se activan a mano en nvim-lspconfig
                automatic_enable = false,
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
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            local capabilities =
                require("cmp_nvim_lsp").default_capabilities()

            -- Diagnostics configuration
            vim.diagnostic.config({
                virtual_text = {
                    severity = {
                        min = vim.diagnostic.severity.ERROR
                    }
                },
                -- Suppress INFO signs
                signs = {
                    severity = {
                        vim.diagnostic.severity.ERROR,
                        vim.diagnostic.severity.WARN,
                        vim.diagnostic.severity.HINT,
                    }
                },
            })

            -- Custom filetype
            vim.cmd [[
                au BufRead,BufNewFile *.tpp set filetype=cpp
            ]]

            -- Helper to avoid repetition; skips servers whose binary is not installed
            local function setup(server, opts)
                opts = opts or {}
                opts.capabilities = capabilities
                vim.lsp.config(server, opts)

                local cmd = vim.lsp.config[server].cmd
                if type(cmd) == "table" and vim.fn.executable(cmd[1]) == 0 then
                    return
                end
                vim.lsp.enable(server)
            end

            setup("harper_ls")
            setup("omnisharp")
            setup("clangd")
            setup("fortls")
            setup("golangci_lint_ls")
            setup("gopls")
            setup("templ")
            setup("jdtls")
            setup("vtsls")
            setup("quick_lint_js")
            setup("jsonls")
            setup("jsonnet_ls")
            setup("ltex")
            setup("texlab")
            setup("lua_ls")
            setup("powershell_es")
            setup("basedpyright")
            setup("mutt_ls")
            setup("ruff")
            setup("sqls")
            setup("taplo")
            setup("hydra_lsp")
            setup("racket_langserver")
        end
    },
}
