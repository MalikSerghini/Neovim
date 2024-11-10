return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = {
      "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    }

    local footer = ""
    local v = vim.version()
    local version = "⚡ Neovim loaded: v" .. v.major .. "." .. v.minor .. "." .. v.patch

    dashboard.section.header.type = "text"
    dashboard.section.header.val= logo
    dashboard.section.header.opts = {
      position="center",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", " New file", ":enew<CR>"),
      dashboard.button("c", " Configuration", ":e ~/.config/nvim/lua/keymaps.lua | cd ~/.config/nvim/ | Neotree reveal<CR>"),
      dashboard.button("s", "󰧑 Second Brain", ":e ~/Documents/Obsidian/second_brain | cd ~/Documents/Obsidian/second_brain | Neotree reveal<CR>"),
      dashboard.button("f", " Find file", ":Telescope find_files<CR>"),
      dashboard.button("b", " Jump to bookmarks", ":Telescope marks<CR>"),
      dashboard.button("p", " Update plugins", ":Lazy sync<CR>"),
      dashboard.button("q", " Exit", ":qa<CR>"),
    }
    dashboard.section.footer.val = {

      footer,
      version

    }

    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    require("alpha").setup(dashboard.opts)
  end,
}
