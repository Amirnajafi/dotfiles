-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- map("n", "<leader>gn", "<cmd>Neogit kind=split<cr>", { desc = "NeoGit", remap = true })
map(
  "n",
  "<leader>gp",
  "<cmd> lua require('goto-preview').goto_preview_definition() <CR>",
  { desc = "GO TO PREVIEW", remap = true }
)
map("n", "<leader>fy", "<cmd>  Telescope neoclip <CR>", { desc = "Telescope neoclip", remap = true })
map("n", "<leader>gb", "<cmd>  Telescope git_branches  <CR>", { desc = "Telescope git branchesh", remap = true })
-- bufferline line toggle piker with telescope
map("n", "<leader>bb", "<cmd>BufferLinePick<CR>", { desc = "Telescope bufferline", remap = true })
-- bufferline close the current buffer
map("n", "<C-w>", "<cmd>bdelete<CR>", { desc = "Close buffer", remap = true })
