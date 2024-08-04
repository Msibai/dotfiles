return {
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_fallback = true })
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },

  opts = {
    notify_on_error = false,
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
    },

    formatters_by_ft = {
      lua = { 'stylua' },
      html = { { 'prettierd', 'prettier' } },
      css = { { 'prettierd', 'prettier' } },
      javascript = { { 'prettierd', 'prettier' } },
      javascriptreact = { { 'prettierd', 'prettier' } },
      typescriptreact = { { 'prettierd', 'prettier' } },
      json = { { 'prettierd', 'prettier' } },
      yaml = { { 'prettierd', 'prettier' } },
      toml = { { 'taplo' } },
      markdown = { { 'prettierd', 'prettier' } },
      graphql = { { 'prettierd', 'prettier' } },
      java = { 'google-java-format' },
    },
  },
}
