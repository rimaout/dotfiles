return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true, -- automatically install syntax highlighters
            ensure_installed = { "vim", "lua", "python", "rust", "java", "c", "json", "yaml", "toml", "html", "css", "javascript", "typescript" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
