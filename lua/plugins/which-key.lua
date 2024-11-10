return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>w",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Window",
    },
    {
      "<leader>u",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "UI",
    },
    {
      "<leader>g",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "GoTo",
    },
    {
      "<leader>c",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Code",
    },
    {
      "<leader>l",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "LiveServer",
    }
    ,
  },
}
