return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-f>', builtin.find_files, {})   -- Ctrl+f: find files
      vim.keymap.set('n', '<C-g>', builtin.live_grep, {})   -- Ctrl+g: live grep
      vim.keymap.set('n', '<C-b>', builtin.buffers, {})     -- Ctrl+b: list open buffers

    end,
}

