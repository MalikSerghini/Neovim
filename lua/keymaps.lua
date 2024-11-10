-- Set leader key to space
vim.g.mapleader = " "

-- Keybindings to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', {desc = 'Move focus to the left window'})
vim.keymap.set('n', '<C-l>', '<C-w>l', {desc = 'Move focus to the right window'})
vim.keymap.set('n', '<C-j>', '<C-w>j', {desc = 'Move focus to the lower window'})
vim.keymap.set('n', '<C-k>', '<C-w>k', {desc = 'Move focus to the upper window'})

-- Window splitting
vim.keymap.set('n', '<leader>wv', ':vsplit<cr>', {desc = '[W]indow [V]ertical Split'})
vim.keymap.set('n', '<leader>wh', ':split<cr>', {desc = '[W]indow [H]orizontal Split'})

-- UI
-- Toggle nvim-colorizer
vim.keymap.set('n', '<leader>uc', ':ColorizerToggle<cr>', {desc = '[U]I toggle [C]olorizer'})

-- Toggle Neotree
vim.keymap.set("n", "<leader>un", ":Neotree toggle<CR>", {desc = '[U]I toggle [N]eotree'})

-- Toggle LazyGit
vim.keymap.set("n", "<leader>G", ":LazyGit<CR>", {desc = 'Git'})

-- LiveServer
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", {desc = '[S]tart LiveServer'})
vim.keymap.set("n", "<leader>lp", ":LiveServerStop<CR>", {desc = 'S[t]op LiveServer'})

-- Copy elements down/up
vim.keymap.set("n", "<A-S-Down>", "yyp", { desc = "Duplicate line below" })
vim.keymap.set("v", "<A-S-Down>", "y'>p", { desc = "Duplicate selection below" })
vim.keymap.set("n", "<A-S-Up>", "yyP", { desc = "Duplicate line above" })
vim.keymap.set("v", "<A-S-Up>", "y'<P", { desc = "Duplicate selection above" })

-- Move elements down/up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
