return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
  },
  event = "VeryLazy",
  config = function()
    require("neogit").setup({})
    -- require("ustom.mappings").load_mappings "neogit"
  end,
}
