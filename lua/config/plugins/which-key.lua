return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        { "<leader>c", group = "Code/Copilot" },
        { "<leader>f", group = "Find" },
        { "<leader>h", group = "Git hunks" },
        { "<leader>r", group = "Rename" },
        { "<leader>c", group = "Code" },
        { "<leader>s", group = "Signature/Search" },
        { "<leader>d", group = "Diagnostics (Trouble)" },
      },
    },
  },
}
