return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<A-t>", ":Neotree toggle<CR>", {})                 -- alt + t
    vim.keymap.set("n", "<A-a>", "<C-w>h", { desc = "Move to left window" }) -- alt + a for focus on neotree
    vim.keymap.set("n", "<A-d>", "<C-w>l", { desc = "Move to right window" }) -- alt + d for focus on file
  end,
}
