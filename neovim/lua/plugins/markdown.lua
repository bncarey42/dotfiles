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
        "<cmd>LivePreview start<cr>",
        ft = "markdown",
        desc = "Markdown Preview",
      },
      {
        "<leader>cpc",
        "<cmd>LivePreview close<cr>",
        ft = "markdown",
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
