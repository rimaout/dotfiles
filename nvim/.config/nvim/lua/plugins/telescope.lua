return {

	-- TELESCOPE --
	"nvim-telescope/telescope.nvim",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim", -- dispalys nvim interfaces using telescope ui
	},

	opts = {
		extensions = {
            ["ui-select"] = { require("telescope.themes").get_dropdown() }
        }
	},

    config = function()
		require("telescope").load_extension("ui-select")

      local builtin = require('telescope.builtin')  
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
      vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
      vim.keymap.set('n', '<leader>fb', builtin.builtin, { desc = '[F]ind Telescope [B]uiltin' })
      vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
      vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]ind [R]esume' })
      vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = '[F]ind Olf Files' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

       -- Find Diagnostics (with emproved interface)
       vim.keymap.set('n', '<leader>fd', function()
        builtin.diagnostics(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- Live grep in file (similar to "/" command) (also eproved interface)
      vim.keymap.set('n', '<leader>7', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set('n', '<leader>fn', function()
        builtin.live_grep({ cwd = vim.fn.stdpath 'config' })
      end, { desc = '[F]inf in [N]eovim conf' })
    end,
}
