return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          file_ignore_patterns = { "%.git/", "node_modules/" },
        },
        pickers = {
          find_files = {
            theme = "ivy",
            find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
          },
        },
        extensions = {
          fzf = {},
        },
      })

      telescope.load_extension("fzf")

      -- search keymaps
      vim.keymap.set("n", "<leader>ff", builtin.find_files)
      vim.keymap.set("n", "<leader>fg", builtin.live_grep)
      vim.keymap.set("n", "<leader>fb", builtin.buffers)
      vim.keymap.set("n", "<leader>fh", builtin.help_tags)
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics)
      vim.keymap.set("n", "<leader>fr", builtin.resume)
      vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols)
      vim.keymap.set("n", "<leader>fw", builtin.lsp_dynamic_workspace_symbols)

      -- config files
      vim.keymap.set("n", "<space>en", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
      end)

      -- lazy plugins
      vim.keymap.set("n", "<space>ep", function()
        builtin.find_files({ cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy") })
      end)

      require("config.telescope.multigrep").setup()
    end,
  },
}
