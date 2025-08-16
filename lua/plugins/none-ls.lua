return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.formatting.sql_formatter,
        null_ls.builtins.diagnostics.yamllint,
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.isort,
      },
    })
    vim.keymap.set("n", "<A-f>", vim.lsp.buf.format, {})
  end,
}
