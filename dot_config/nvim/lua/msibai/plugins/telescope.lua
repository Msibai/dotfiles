return {
  { -- Telescope: Fuzzy Finder (files, LSP, etc.)
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x', -- safer: pin to a stable release branch
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- Native FZF sorter (faster searching)
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable('make') == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' }, -- better UI for vim.ui.select
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }, -- optional: pretty icons
    },
    config = function()
      -- [[ Telescope Setup ]]
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      })

      -- Enable Telescope extensions (only if installed)
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')
      pcall(require('telescope').load_extension, 'rest') -- optional (for REST API plugin)

      -- Group keymaps in which-key (if installed)
      pcall(function()
        local wk = require('which-key')
        wk.add({ '<leader>s', group = '[S]earch' })
      end)

      -- [[ Keymaps for Telescope builtins ]]
      local builtin = require('telescope.builtin')

      -- Common searches
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      -- Fuzzy find inside current buffer
      vim.keymap.set('n', '<leader>/', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- Live Grep only in open files
      vim.keymap.set('n', '<leader>s/', function()
        builtin.live_grep({
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        })
      end, { desc = '[S]earch [/] in Open Files' })

      -- Shortcut for Neovim config files
      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files({ cwd = vim.fn.stdpath('config') })
      end, { desc = '[S]earch [N]eovim config files' })
    end,
  },
}
