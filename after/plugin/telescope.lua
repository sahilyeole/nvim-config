local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>of',':execute "NvimTreeClose" | Telescope find_files<CR>', { noremap = true, silent = true } )
vim.keymap.set('n', '<leader>og',':execute "NvimTreeClose" | Telescope git_files<CR>', { noremap = true, silent = true } )
vim.keymap.set('n', '<leader>os', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
