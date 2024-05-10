-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-n>", "<cmd>Neotree filesystem toggle left<cr>")
vim.api.nvim_create_user_command("CopyRelPath", function()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  vim.api.nvim_call_function("setreg", { "+", path })
  vim.print("Copied path: " .. path)
end, {})
vim.keymap.set("n", "<leader>bc", "<cmd>CopyRelPath<cr>", { desc = "Copy relative path of current buffer" })
