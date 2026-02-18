return {

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
        protols = {},
      },
    },
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",


    -- Pin to f7955203: commit 8cdffc6d added "tab" to vim query but parser
    -- doesn't support it yet. See: [github.com/nvim-treesitter/nvim-treesitter](http://github.com/nvim-treesitter/nvim-treesitter)
    -- Remove this pin once vim parser is updated with :tab support.

    -- commit = "f7955203bb16eed15f9e0fbf7e39b86e0de96b47",
    lazy = true,
    opts = {
      servers = { marksman = {} },
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "go",
      },
    },
  },

  -- add any tools you want to have installed below
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "protols",
      },
    },
  },
}
