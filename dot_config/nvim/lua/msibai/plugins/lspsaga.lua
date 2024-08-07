return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('lspsaga').setup({
      lightbulb = {
        enable = false,
      },
    })
    local wk = require('which-key')
    wk.add({ '<leader>l', group = 'Lspsaga' })
    vim.keymap.set('n', '<leader>lc', ':Lspsaga code_action<cr>', { desc = 'Code action' })
    vim.keymap.set('n', '<leader>lo', ':Lspsaga outline<cr>', { desc = 'Outline' })
    vim.keymap.set('n', '<leader>lr', ':Lspsaga rename<cr>', { desc = 'Rename' })
    vim.keymap.set('n', '<leader>lg', ':Lspsaga goto_definition<cr>', { desc = 'Go to definition' })
    vim.keymap.set('n', '<leader>lf', ':Lspsaga finder<cr>', { desc = 'Finder' })
    vim.keymap.set('n', '<leader>lp', ':Lspsaga peek_definition<cr>', { desc = 'Peek definition' })
    vim.keymap.set('n', '<leader>ld', ':Lspsaga show_workspace_diagnostics<cr>', { desc = 'Show workspace diagnostics' })
  end,
}
