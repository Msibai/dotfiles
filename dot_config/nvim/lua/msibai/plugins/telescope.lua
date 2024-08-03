return {
  { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable('make') == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      })

      -- Enable Telescope extensions if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')
      pcall(require('telescope').load_extension, 'rest')
      
      local wk = require('which-key')
      wk.add({'<leader>s', group = ' Search'})

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = ' Help' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = ' Keymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = ' Files' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = ' Select telescope' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = ' Current word' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = ' By grep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = ' Diagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = ' Resume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = ' Recent files ("." for repeat)' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = ' Find existing buffers' })

      vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end, { desc = ' Fuzzily search in current buffer' })

      -- It's also possible to pass additional configuration options.
      --  See `:help telescope.builtin.live_grep()` for information about particular keys
      vim.keymap.set('n', '<leader>s/', function()
        builtin.live_grep({
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        })
      end, { desc = ' In open files' })

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files({ cwd = vim.fn.stdpath('config') })
      end, { desc = ' Neovim files' })
    end,
  },
}
