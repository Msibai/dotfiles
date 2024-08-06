return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup({
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      })
      require('which-key').add({ '<leader>g', group = 'Git' })
    end,
    vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', { desc = 'Preview Git hunk changes' }),
    vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = 'Preview Git hunk changes' }),
    vim.keymap.set('n', '<leader>gs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage Git hunk' }),
    vim.keymap.set('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>', { desc = 'Undo Git hunk staging' }),
    vim.keymap.set('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset Git hunk' }),
    vim.keymap.set('n', '<leader>gS', ':Gitsigns stage_buffer<CR>', { desc = 'Stage all Git hunks in buffer' }),
    vim.keymap.set('n', '<leader>gR', ':Gitsigns reset_buffer<CR>', { desc = 'Reset all Git hunks in buffer' }),
    vim.keymap.set('n', '<leader>gN', ':Gitsigns next_hunk<CR>', { desc = 'Next Git hunk' }),
    vim.keymap.set('n', '<leader>td', ':Gitsigns toggle_deleted<CR>', { desc = 'Toggle deleted file in Git' }),
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    keys = { { '<leader>gn', '<cmd>Neogit<cr>', desc = 'Neogit' } },
    opts = {
      integrations = {
        diffview = true,
      },
    },
  },
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = { { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Diffview Open' } },
  },
}
