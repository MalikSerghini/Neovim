return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()

    -- open current active file in neotree
    require("neo-tree").setup({
      filesystem = {

        follow_current_file = {
          enabled = true
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      buffers = {
        follow_current_file = true,
      }

    })
  end
}
