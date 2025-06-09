return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        javascript = { 'prettierd', 'prettier' },
        javascriptreact = { 'prettierd', 'prettier' },
        typescript = { 'prettierd', 'prettier' },
        typescriptreact = { 'prettierd', 'prettier' },
        html = { 'prettierd', 'prettier' },
        css = { 'prettierd', 'prettier' },
        scss = { 'prettierd', 'prettier' },
        json = { 'prettierd', 'prettier' },
        yaml = { 'yamlfix' },
        toml = { 'taplo' },
        markdown = { 'prettierd', 'prettier' },
        graphql = { 'prettierd', 'prettier' },
        lua = { 'stylua' },
        python = {
          -- To fix auto-fixable lint errors.
          'ruff_fix',
          -- To run the Ruff formatter.
          'ruff_format',
          -- To organize the imports.
          'ruff_organize_imports',
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    })

    vim.keymap.set({ 'n', 'v' }, '<leader>fz', function()
      conform.format({
        lsp_fallback = false,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = 'Format file or selection' })
  end,
}
