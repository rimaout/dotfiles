return {

    -- MASON (lsp installer) --
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
                    "lua_ls",        -- lua language server
                    "ts_ls",         --
                    "pyright",       -- python language server
                    "clangd",        -- c/c++ language server
                    "rust_analyzer", -- rust language server
                    "html",          -- html language server
                    "gopls"          -- go language server
                },
            })
        end,
    },

    -- MASON-TOOL-INSTALLER (install tools) --
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "stylua",   -- lua code formatter

                    "black",    -- python code formatter
                    "isort",    -- python inport formatter

                    "prettier", -- js ts css html md jason ... formatter
                },
            })
        end,
    },

    -- NONE-LS (use non LSP tools as they where LSPs)
    -- mainly used for formatters, linters and debuggers
    {
        "nvimtools/none-ls.nvim",
        keys = {
            { "<leader>fr", vim.lsp.buf.format, { desc = "[F]o[R]mat the Code in the current file" } }
        },

        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {

                    -- lua
                    null_ls.builtins.formatting.stylua,

                    --python
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.black,

                    --js ts css html jason md ...
                    null_ls.builtins.formatting.prettier,

                    --go
                    null_ls.builtins.formatting.gofmt,             --install with go: install mvdan.cc/gofumpt@latest
                    null_ls.builtins.formatting.goimports_reviser, --install with go: install -v github.com/incu6us/goimports-reviser/v3@latest
                },
            })
        end,
    },

    -- NVIM-LSPCONFIG (comunication betwen CMP with LSP) --
    {
        "neovim/nvim-lspconfig",
        keys = {
            { "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]action" } },
            { "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[N]ame word under cursor across files" } },
            { "grr", function() require('telescope.builtin').lsp_references() end, { desc = '[G]oto [R]eferences' } },      -- Find references for the word under your cursor.
            { "grd", function() require('telescope.builtin').lsp_definitions() end, { desc = '[G]oto [D]efinition' } },      --  This is where a variable was first declared, or where a function is defined, etc. oss: To jump back, press <C-t>.
        },

        config = function()
            -- Integration betwen lsp and cmp
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            -- Per language config (add "capabilities = capabilities" for each lsp)
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.ts_ls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.gopls.setup({ capabilities = capabilities })
        end,
    },
}

--[[

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')

    --]]

