return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },
  config = function()
    require('noice').setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      cmdline = {
        format = {
          -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
          -- view: (default is cmdline view)
          -- opts: any options passed to the view
          -- icon_hl_group: optional hl_group for the icon
          -- title: set to anything or empty string to hide
          cmdline = { pattern = '^:', icon = ' 󰘳 ', lang = 'vim' },
          search_down = { kind = 'search', pattern = '^/', icon = '  ', lang = 'regex', title = ' Search ' },
          search_up = { kind = 'search', pattern = '^%?', icon = ' ', lang = 'regex', title = 'Search' },
          filter = { pattern = '^:%s*!', icon = '$', lang = 'bash', title = 'Shell' },
          lua = { pattern = { '^:%s*lua%s+', '^:%s*lua%s*=%s*', '^:%s*=%s*' }, icon = '', lang = 'lua' },
          help = { pattern = '^:%s*he?l?p?%s+', icon = '', title = 'Help' },
          input = {}, -- Used by input()
        },
      },
    })
    vim.api.nvim_set_keymap('n', '<leader>dm', '<cmd>NoiceDismiss<CR>', { desc = 'Dismiss Noice message' })
  end,
}
