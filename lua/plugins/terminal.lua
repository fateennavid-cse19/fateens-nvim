return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-t>]], -- Ctrl + t to toggle
      direction = "float",     -- Use floating terminal
      float_opts = {
        border = "curved",     -- Options: single, double, shadow, curved
        width = 100,
        height = 30,
        winblend = 3,
      },
      shade_terminals = true,
      start_in_insert = true,
      persist_size = false,
      close_on_exit = true,
      shell = vim.o.shell,
    })
  end,
}

