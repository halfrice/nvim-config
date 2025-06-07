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
        python = { 'ruff' },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    })

    vim.keymap.set({ 'n', 'v' }, '<leader>l', function()
      conform.format({
        lsp_fallback = false,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = 'Format file or selection' })
  end,
}
