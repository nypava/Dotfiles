local keymap = vim.keymap

keymap.set("v", " ", "<C-C>")
keymap.set('n', '<leader>b', ':Neotree filesystem reveal left <CR>')

keymap.set('n', '<C-p>', '"+p')
keymap.set('n', '<C-y>', '"+y')

keymap.set('n', '<CR>', '<nop>')

keymap.set("i", "jk", "<C-C>")

keymap.set('n', 'd', '"_d')
keymap.set('n', 'x', '"_x')

keymap.set('n', '<C-D>', '<C-D>M')
keymap.set('n', '<C-U>', '<C-U>M')

keymap.set({'v', 'n'}, '<C-k>', '{')
keymap.set({'v', 'n'}, '<C-j>', '}')
keymap.set({'v', 'n'}, '<leader>q', ':q! <CR>')
keymap.set({'v', 'n'}, '<leader>wq', ':wq <CR>')
keymap.set({'n', 'v'}, '<leader>s', '<C-W>' )
keymap.set({'v', 'n'}, '<leader>w', ':w! <CR>')
keymap.set({'v', 'n'}, '<C-c>', ':noh <CR>')
keymap.set({'v', 'n'}, '<leader>rr', ':LspRestart <CR>')
keymap.set({'v', 'n'}, '<Tab>', ':bp <CR>')
keymap.set({'v', 'n'}, '<C-Tab>', ':bn <CR>')

keymap.set('n', '<M-Y>', '"+y')
keymap.set('n', '<M-P>', '"+p')
keymap.set('n', '<M-D>', 'd')

keymap.set("n", "s-C-l", "<cmd>vertical resize +5<CR>")
keymap.set("n", "s-C-h", ":vertical resize -5<CR>")
keymap.set("n", "s-C-k", ":horizontal resize +2<CR>")
keymap.set("n", "s-C-j", ":horizontal resize -2<CR>")


keymap.set('n', '<leader>na', function()
  vim.opt.number = true
  vim.opt.relativenumber = false
end)

keymap.set('n', '<leader>nr', function()
  vim.opt.relativenumber = true
end)
