return { 
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader> ", builtin.find_files,{desc = 'Search file by name'})
      vim.keymap.set("n", "<leader>f", builtin.live_grep,{desc = 'Search file by content'})

    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }

          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}

