local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>bf', builtin.buffers, {})
-- vim.keymap.set('n', '<C-f>', builtin.grep_string)
vim.keymap.set('n', '<C-f>', function()
	builtin.grep_string({ search = vim.fn.input("Find:  ") });
end)

