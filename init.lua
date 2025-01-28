print("advent of neovim")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":.lua<CR>")

vim.keymap.set("n", "<M-j>", "<CMD>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<CMD>cprev<CR>")


-- keyboard shortcut for getting back to normal mode while in terminal
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

local job_id = 0
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
  job_id = vim.bo.channel
end)

vim.keymap.set("n", "-", "<CMD>Oil<CR>")

vim.keymap.set("n", "<leader>example", function()
  vim.fn.chansend(job_id, { "echo 'hi!'\r\n" })
end)
