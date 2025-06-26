return {
  'rmagatti/auto-session',
  dependencies = {
    'nvim-tree/nvim-tree.lua',
  },
  event = 'VeryLazy',
  config = function()
    local auto_session = require('auto-session')

    local change_nvim_tree_dir = function()
      local nvim_tree = require('nvim-tree')
      nvim_tree.change_dir(vim.fn.getcwd())
    end

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        '~/',
        '~/Applications/',
        '~/Desktop/',
        '~/Documents',
        '~/Downloads',
        '~/Library/',
        '~/Movies/',
        '~/Music/',
        '~/Pictures/',
        '~/Public/',
      },
      post_restore_cmds = { change_nvim_tree_dir, 'NvimTreeOpen' },
      pre_save_cmds = { 'NvimTreeClose' },
    })

    local keymap = vim.keymap

    keymap.set('n', '<leader>pr', '<cmd>SessionRestore<cr>', { desc = 'Restore session' })
    keymap.set('n', '<leader>ps', '<cmd>SessionSave<cr>', { desc = 'Save session' })
  end,
}
