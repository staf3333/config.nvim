return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        { "<leader>f", group = "Find" },
        { "<leader>h", group = "Git hunks" },
        { "<leader>r", group = "Rename" },
        { "<leader>c", group = "Code" },
        { "<leader>s", group = "Signature/Search" },
      },
    },
  },
}
