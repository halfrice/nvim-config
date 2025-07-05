return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {},
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    local noice = require('noice')

    noice.setup({
      cmdline = {
        view = 'cmdline',
        format = {
          cmdline = {
            pattern = '^:',
            icon = ':',
            -- icon = '',
            lang = 'vim',
          },
        },
      },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = false,
      },
      -- routes = {
      --   {
      --     view = 'notify',
      --     filter = { event = 'msg_showmode' },
      --   },
      -- },
      -- views = {
      --   cmdline_popup = {
      --     border = {
      --       style = 'none',
      --       padding = { 0, 1 },
      --     },
      --     filter_options = {},
      --     win_options = {
      --       winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder',
      --     },
      --   },
      -- },
    })
  end,
}
