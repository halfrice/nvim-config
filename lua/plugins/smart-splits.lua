return {
  'mrjones2014/smart-splits.nvim',
  event = 'VeryLazy',
  config = function()
    local smart_splits = require('smart-splits')

    smart_splits.setup({
      -- default_amount = 5,
    })

    -- Movement
    vim.keymap.set('n', '<C-h>', smart_splits.move_cursor_left)
    vim.keymap.set('n', '<C-j>', smart_splits.move_cursor_down)
    vim.keymap.set('n', '<C-k>', smart_splits.move_cursor_up)
    vim.keymap.set('n', '<C-l>', smart_splits.move_cursor_right)

    -- Resize
    vim.keymap.set('n', '<A-h>', smart_splits.resize_left)
    vim.keymap.set('n', '<A-j>', smart_splits.resize_down)
    vim.keymap.set('n', '<A-k>', smart_splits.resize_up)
    vim.keymap.set('n', '<A-l>', smart_splits.resize_right)

    -- Swap
    vim.keymap.set('n', '<leader><C-h>', require('smart-splits').swap_buf_left)
    vim.keymap.set('n', '<leader><C-j>', require('smart-splits').swap_buf_down)
    vim.keymap.set('n', '<leader><C-k>', require('smart-splits').swap_buf_up)
    vim.keymap.set('n', '<leader><C-l>', require('smart-splits').swap_buf_right)
  end,
}
