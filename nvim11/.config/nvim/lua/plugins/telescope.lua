return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
    extensions = {
      ["ui-select"] = { require("telescope.themes").get_dropdown() },
    },
  },
  keys = (function()
    local get_themes
    local function cached_themes()
      if not get_themes then
        local themes = require("telescope.themes")
        get_themes = {
          dropdown = function(opts) return themes.get_dropdown(opts or {}) end
        }
      end
      return get_themes
    end

    return {
      { "<leader>fh", function() require("telescope.builtin").help_tags() end, mode = "n", desc = "[F]ind [H]elp" },
      { "<leader>fk", function() require("telescope.builtin").keymaps() end, mode = "n", desc = "[F]ind [K]eymaps" },
      { "<leader>ff", function() require("telescope.builtin").find_files() end, mode = "n", desc = "[F]ind [F]iles" },
      { "<leader>fb", function() require("telescope.builtin").builtin() end, mode = "n", desc = "[F]ind Telescope [B]uiltin" },
      { "<leader>fw", function() require("telescope.builtin").grep_string() end, mode = "n", desc = "[F]ind current [W]ord" },
      { "<leader>fg", function() require("telescope.builtin").live_grep() end, mode = "n", desc = "[F]ind by [G]rep" },
      { "<leader>fr", function() require("telescope.builtin").resume() end, mode = "n", desc = "[F]ind [R]esume" },
      { "<leader>fo", function() require("telescope.builtin").oldfiles() end, mode = "n", desc = "[F]ind Old Files" },
      { "<leader><leader>", function() require("telescope.builtin").buffers() end, mode = "n", desc = "Find existing buffers" },

      {
        "<leader>fd",
        function()
          local themes = cached_themes()
          require("telescope.builtin").diagnostics(themes.dropdown { winblend = 10, previewer = false })
        end,
        mode = "n",
        desc = "[F]ind [D]iagnostics (dropdown)",
      },

      {
        "<leader>7",
        function()
          local themes = cached_themes()
          require("telescope.builtin").current_buffer_fuzzy_find(themes.dropdown { winblend = 10, previewer = false })
        end,
        mode = "n",
        desc = "Fuzzily search in current buffer",
      },

      {
        "<leader>fn",
        function()
          require("telescope.builtin").live_grep { cwd = vim.fn.stdpath("config") }
        end,
        mode = "n",
        desc = "[F]ind in [N]eovim config",
      },
    }
  end)(),

  config = function(_, opts)
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local themes = require("telescope.themes")

    telescope.setup(opts or {})
    telescope.load_extension("ui-select")
  end,
}

