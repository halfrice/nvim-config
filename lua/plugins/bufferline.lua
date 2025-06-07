return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  config = function()
    local bufferline = require('bufferline')

    bufferline.setup({
      options = {
        mode = 'buffers',
        diagnostics = 'nvim_lsp',
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'Files',
            highlight = 'Directory',
            separator = true,
          },
        },
      },
    })

    local keymap = vim.keymap
    keymap.set('n', '<leader>bb', '<cmd>BufferLinePick<cr>', { desc = 'Pick buffer' })
    keymap.set('n', '<leader>bq', '<cmd>BufferLinePickClose<cr>', { desc = 'Close buffer' })
    keymap.set('n', '<leader>ba', '<cmd>BufferLineCloseOthers<cr>', { desc = 'Close buffer' })
    keymap.set('n', '<leader>bl', '<cmd>BufferLineCloseRight<cr>', { desc = 'Close buffer' })
    keymap.set('n', '<leader>bh', '<cmd>BufferLineCloseLeft<cr>', { desc = 'Close buffer' })
  end,
}
