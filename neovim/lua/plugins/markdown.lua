return {
  {
    "brianhuster/live-preview.nvim",
    dependencies = {
      -- You can choose one of the following pickers
      "nvim-telescope/telescope.nvim",
      "ibhagwan/fzf-lua",
      "nvim-mini/mini.pick",
      "folke/snacks.nvim",
    },
    keys = {
      {
        "<leader>cps",
        ft = "markdown",
        "<cmd>LivePreview start<cr>",
        desc = "Markdown Preview",
      },
      {
        "<leader>cpc",
        ft = "markdown",
        "<cmd>LivePreview close<cr>",
        desc = "Close Markdown Preview",
      },

      {
        "<leader>cpp",
        "<cmd>LivePreview pick<cr>",
        desc = "Pick Markdown File to Preview",
      },
    },
  },
}
