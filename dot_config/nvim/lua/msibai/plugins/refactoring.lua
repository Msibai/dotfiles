return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('refactoring').setup()
    local wk = require('which-key')
    wk.add({ '<leader>r', name = 'Rrefactor' })
  end,

  vim.keymap.set('x', '<leader>re', '<cmd>Refactor extract<CR>', { desc = 'Extract expression' }),
  vim.keymap.set('x', '<leader>rf', '<cmd>Refactor extract_to_file<CR>', { desc = 'Extract function to file' }),
  vim.keymap.set('x', '<leader>rv', '<cmd>Refactor extract_var<CR>', { desc = 'Extract variable' }),
  vim.keymap.set({ 'n', 'x' }, '<leader>ri', '<cmd>Refactor inline_var<CR>', { desc = 'Inline variable' }),
  vim.keymap.set('n', '<leader>rI', '<cmd>Refactor inline_func<CR>', { desc = 'Inline function' }),
  vim.keymap.set('n', '<leader>rb', '<cmd>Refactor extract_block<CR>', { desc = 'Extract block' }),
  vim.keymap.set('n', '<leader>rB', '<cmd>Refactor extract_block_to_file<CR>', { desc = 'Extract block to file' }),
}
