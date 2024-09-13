return {

    -- MASON (install lsp) --
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },

    -- MASON-LSPCONFIG (list of lsp to install) --
    {
        "Williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",  -- lua language server
                    "pyright", -- python language server
                    "jdtls",   -- java language server
                },
            })
        end,

    },

    -- MASON-TOOL-INSTALLER (install tools) --
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "stylua", -- lua code formatter

                    "black", -- python code formatter
                    "mypy",  -- python type checker
                    "ruff",  -- python
                },
            })
        end,
    },

    -- NVIM-LSPCONFIG (comunication with LSP) --
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Integration betwen lsp and cmp
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            --  add "capabilities = capabilities"" for each lsp_language.setup

            -- Per language config
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })

            -- Key Bindings
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
