return {
  "microph1/nvim-pde",
  ft = {"html", "scss"},
  config = function(opts)
    require('pde'):setup(opts.opts);
  end
}
