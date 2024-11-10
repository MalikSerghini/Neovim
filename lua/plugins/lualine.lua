return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local custom_gruvbox = require'lualine.themes.gruvbox'

    -- NORMAL MODE
    custom_gruvbox.normal.a.bg = '#7396e0'
    custom_gruvbox.normal.a.fg = '#14161e'
    custom_gruvbox.normal.b.bg = '#39405f'
    custom_gruvbox.normal.b.fg = '#7396e0'
    custom_gruvbox.normal.c.bg = '#111120'

    -- INSERT MODE
    custom_gruvbox.insert.a.bg = '#9ccb68'
    custom_gruvbox.insert.a.fg = '#14161e'
    custom_gruvbox.insert.b.bg = '#39405f'
    custom_gruvbox.insert.b.fg = '#9ccb68'
    custom_gruvbox.insert.c.bg = '#14161e'

    -- COMMAND MODE
    custom_gruvbox.command.a.bg = '#dfad67'
    custom_gruvbox.command.a.fg = '#14161e'
    custom_gruvbox.command.b.bg = '#39405f'
    custom_gruvbox.command.b.fg = '#dfad67'
    custom_gruvbox.command.c.bg = '#14161e'

    -- INACTIVE MODE
    custom_gruvbox.inactive = {
      a = { bg = '#3a3a3a', fg = '#808080' },
      b = { bg = '#2c2c2c', fg = '#808080' },
      c = { bg = '#1e1e1e', fg = '#808080' },
    }

    require("lualine").setup({
      options = {
        theme = custom_gruvbox,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'neo-tree' },
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {{
          'filename',
          fmt = function(str)
            return str .. ''
          end,
          padding = { left = 1, right = 1 },
        }},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'},
      },
      inactive_sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'}
      },
      tabline = {},
      extensions = {},
      disabled_filetypes = {'neo-tree'}
    })
  end
}
