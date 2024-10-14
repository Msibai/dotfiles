return {
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_format = 'fallback' })
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },

  opts = {
    notify_on_error = false,
    format_on_save = {
      lsp_format = 'fallback',
      timeout_ms = 500,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      html = { { 'prettierd', 'prettier', stop_after_first = true } },
      css = { { 'prettierd', 'prettier', stop_after_first = true } },
      javascript = { { 'prettierd', 'prettier', stop_after_first = true } },
      javascriptreact = { { 'prettierd', 'prettier', stop_after_first = true } },
      typescript = { { 'prettierd', 'prettier', stop_after_first = true } },
      typescriptreact = { { 'prettierd', 'prettier', stop_after_first = true } },
      json = { { 'prettierd', 'prettier', stop_after_first = true } },
      yaml = { { 'prettierd', 'prettier', stop_after_first = true } },
      toml = { { 'taplo' } },
      markdown = { { 'prettierd', 'prettier', stop_after_first = true } },
      graphql = { { 'prettierd', 'prettier', stop_after_first = true } },
      java = { 'google-java-format' },
    },
  },
}
