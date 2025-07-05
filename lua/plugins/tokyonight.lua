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
        -- lualine transparency fix (temp)
        on_colors = function(colors)
          colors.bg_statusline = colors.none
        end,
        -- bufferline transparency fix (temp)
        on_highlights = function(highlight, colors)
          -- TabLineFill is defaulted to black
          highlight.TabLineFill = {
            bg = colors.none,
          }
        end,
      })

      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
}
