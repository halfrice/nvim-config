return {
  {
    'folke/tokyonight.nvim',
    -- lazy = true,
    priority = 1000,
    -- opts = {},
    config = function()
      local tokyonight = require('tokyonight')

      tokyonight.setup({
        transparent = true,
        styles = {
          sidebars = 'transparent',
          -- floats = 'transparent',
        },
      })

      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
}
