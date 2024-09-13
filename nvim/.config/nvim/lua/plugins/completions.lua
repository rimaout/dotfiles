return {
  ---------- COPILOT -----------
  {
    "github/copilot.vim"
    -- write ":Copilot setup" to login
  },
  ---------- CMP LSP -----------
  {
    "hrsh7th/cmp-nvim-lsp"  -- integration betwen lsp and cmp
    -- look in lsp-config for more settings 
  },

  ---------- LUASNIP -----------
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip", -- compleation engine
      "rafamadriz/friendly-snippets", --vscode like snippet source
    },
  },

  ---------- NVIM CMP ----------
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load() -- used vscode like snippets drom friendly-snippetes

      cmp.setup({

        -- Snippet Engine Selection
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- use luasnip (snippet engine)
          end,
        },

        -- Window Settings
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        -- Key Mappings
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),

        -- Snippet Sources
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- code lsp
          { name = "luasnip" }, -- luasnip
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
