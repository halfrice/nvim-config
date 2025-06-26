return {
  'mbbill/undotree',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set(
      'n',
      '<leader>u',
      '<cmd>UndotreeToggle<cr> <bar> <cmd>UndotreeFocus<cr>',
      { desc = 'Toggle Undotree' }
    )
  end,
}
