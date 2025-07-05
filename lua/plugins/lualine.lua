-- https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  config = function()
    local lualine = require('lualine')
    -- local lazy_status = require('lazy.status')

    lualine.setup({
      options = {
        globalstatus = true,
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'mode', 'branch', 'diff', 'diagnostics' },
        lualine_x = {
          -- Show macro recording message
          {
            require('noice').api.statusline.mode.get,
            cond = require('noice').api.statusline.mode.has,
          },
          -- Show Lazy plugin updates
          -- {
          --   lazy_status.updates,
          --   cond = lazy_status.has_updates,
          -- },
          { 'encoding' },
          { 'fileformat' },
          { 'filetype' },
        },
        lualine_y = {},
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    })
  end,
}
