return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Generate ASCII art header with fallback
    local function get_header()
      local handle = io.popen("figlet Fateen\\'s\\ NVim")
      if handle then
        local result = handle:read("*a")
        handle:close()
        return vim.split(result, "\n", { trimempty = true })
      else
        return { "Fateen's NVim" }
      end
    end

    require("dashboard").setup({
      theme = "doom",          -- or "hyper"
      config = {
        header = get_header(), -- Use dynamic figlet header
        center = {
          { icon = "  ", desc = "New File", key = "n", action = "enew" },
          { icon = "  ", desc = "File Explorer", key = "e", action = "Neotree toggle" },
          { icon = "  ", desc = "Recent Files", key = "r", action = "Telescope oldfiles" },
          { icon = "  ", desc = "Find File", key = "f", action = "Telescope find_files" },
          { icon = "  ", desc = "Quit", key = "q", action = "qa" },
        },
        footer = { "", "✨ Happy hacking!" },
      },
    })
  end,
}

