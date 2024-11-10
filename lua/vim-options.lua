vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Set leader key to space
vim.g.mapleader = " "

-- Enable relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Enable auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- Enable smart indenting
vim.breakindent = true

-- Auto-indent the entire file on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Keep cursor-position after save
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd('normal! gg=G')
    vim.api.nvim_win_set_cursor(0, cursor_pos)
  end
})
