vim.keymap.set("i", "jk", "<C-C>")
vim.keymap.set("v", " ", "<C-C>")
vim.keymap.set('n', '<leader>b', ':Neotree filesystem reveal left <CR>')
vim.keymap.set('n', '<C-k>', '{')
vim.keymap.set('n', '<C-j>', '}')
vim.keymap.set('n', 'p', '"+p')
vim.keymap.set('n', 'y', '"+y')
vim.keymap.set('v', 'p', '"+p')
vim.keymap.set('v', 'y', '"+y')
vim.keymap.set({'v', 'n'}, '<leader>q', ':q <CR>')
vim.keymap.set({'v', 'n'}, '<leader>wq', ':wq <CR>')
vim.keymap.set({'v', 'n'}, '<leader>q!', ':q! <CR>')
vim.keymap.set({'v', 'n'}, '<leader>w', ':w <CR>')
vim.keymap.set({'n', 'v'}, '<leader>s', '<C-W>' )



vim.keymap.set('n', '<leader>na', function()
  vim.opt.number = true
  vim.opt.relativenumber = false
end)

vim.keymap.set('n', '<leader>nr', function()
  vim.opt.relativenumber = true
end)

