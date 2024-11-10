return {
  'norcalli/nvim-colorizer.lua',
  config = function()

    require 'colorizer'.setup {
      '*'; -- Highlight all files, but customize some others.
      css = { css=true }; -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    }

  end

}
