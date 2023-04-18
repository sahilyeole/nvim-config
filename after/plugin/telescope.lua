
vim.keymap.set('n', '<leader>of',':execute "NvimTreeClose" | Telescope find_files<CR>', { noremap = true, silent = true } )
vim.keymap.set('n', '<leader>og',':execute "NvimTreeClose" | Telescope git_files<CR>', { noremap = true, silent = true } )
vim.keymap.set('n', '<leader>os',':execute "NvimTreeClose" | Telescope live_grep<CR>', { noremap = true, silent = true } )
vim.keymap.set('n', '<leader>oc',':execute "NvimTreeClose" | Telescope grep_string<CR>', { noremap = true, silent = true } )

-- vim.keymap.set('n', '<leader>oc', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

