---------------------------------------------------
-- 🌸 Basic options
---------------------------------------------------
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.tabstop = 2               -- Number of spaces tabs count for
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2            -- Indent size

---------------------------------------------------
-- ⚡ Bootstrap lazy.nvim if not installed
---------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

---------------------------------------------------
-- 🗺️ Set leader keys before loading plugins
---------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

---------------------------------------------------
-- 🚀 Setup lazy.nvim and plugins
---------------------------------------------------
require("lazy").setup({
  spec = {
    -- 🌈 Colorscheme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- 🔭 Fuzzy finder
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- 🌳 Treesitter for better syntax highlighting & code features
    {
      'nvim-treesitter/nvim-treesitter',
      branch = 'master',
      lazy = false,
      build = ":TSUpdate"
    },

    -- 📁 File explorer
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
      },
      lazy = false,
    }
  },
  install = { colorscheme = { "catppuccin" } }, -- Apply theme on install
  checker = { enabled = true },                 -- Auto check for updates
})

---------------------------------------------------
-- 🎨 Catppuccin config
---------------------------------------------------
require("catppuccin").setup({
  flavour = "macchiato",
})
vim.cmd.colorscheme("catppuccin")

---------------------------------------------------
-- 🔭 Telescope keymaps
---------------------------------------------------
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})   -- Ctrl+f: find files
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})   -- Ctrl+g: live grep
vim.keymap.set('n', '<C-b>', builtin.buffers, {})     -- Ctrl+b: list open buffers


---------------------------------------------------
-- Neo-tree keymaps
---------------------------------------------------
vim.keymap.set('n', '<A-t>', ':Neotree toggle<CR>', {}) -- alt + t
vim.keymap.set('n','<A-a>','<C-w>h', {desc = "Move to left window"}) -- alt + a for focus on neotree
vim.keymap.set('n','<A-d>','<C-w>l', {desc = "Move to right window"}) -- alt + d for focus on file

---------------------------------------------------
-- 🌳 Treesitter config
---------------------------------------------------
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "bash","bibtex","cmake","comment","cpp","css","csv","dockerfile","git_config","git_rebase",
    "gitattributes","gitcommit","gitignore","html","htmldjango","http","java","javadoc","javascript",
    "jsdoc","json","json5","jsonc","lua","markdown","markdown_inline","nginx","passwd","php",
    "powershell","python","query","rust","sql","ssh_config","svelte","terraform","tsx","typescript",
    "udev","vim","vimdoc","vue","xml","yaml"
  },
  highlight = { enable = true },      -- Enable highlighting
  indent = { enable = true },         -- Enable smart indent
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection    = "<C-space>", -- Start selection
      node_incremental  = "<C-space>", -- Expand to next node
      scope_incremental = "<C-s>",     -- Expand to next scope
      node_decremental  = "<BS>",      -- Shrink selection
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",  -- Around function
        ["if"] = "@function.inner",  -- Inside function
        ["ac"] = "@class.outer",     -- Around class
        ["ic"] = "@class.inner",     -- Inside class
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = { ["]m"] = "@function.outer", ["]c"] = "@class.outer" },
      goto_previous_start = { ["[m"] = "@function.outer", ["[c"] = "@class.outer" },
    },
  },
})

