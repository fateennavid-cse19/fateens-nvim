return {

  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "bibtex",
        "cmake",
        "comment",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "html",
        "htmldjango",
        "http",
        "java",
        "javadoc",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "nginx",
        "passwd",
        "php",
        "powershell",
        "python",
        "query",
        "rust",
        "sql",
        "ssh_config",
        "svelte",
        "terraform",
        "tsx",
        "typescript",
        "udev",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml",
      },
      highlight = { enable = true }, -- Enable highlighting
      indent = { enable = true }, -- Enable smart indent
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>", -- Start selection
          node_incremental = "<C-space>", -- Expand to next node
          scope_incremental = "<C-s>", -- Expand to next scope
          node_decremental = "<BS>", -- Shrink selection
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer", -- Around function
            ["if"] = "@function.inner", -- Inside function
            ["ac"] = "@class.outer", -- Around class
            ["ic"] = "@class.inner", -- Inside class
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
  end,
}
