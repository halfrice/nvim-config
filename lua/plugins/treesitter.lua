return {
  {
    -- Tree-sitter is a parser generator tool and an incremental parsing library. It can build a concrete syntax tree for a source file and efficiently update the syntax tree as the source file is edited.
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile', 'VeryLazy' },
    cmd = { 'TSUpdateSync', 'TSUpdate', 'TSInstall' },
    keys = {
      { '<c-tab>', desc = 'Increment Selection' },
      { '<bs>', desc = 'Decrement Selection', mode = 'x' },
    },
    opts_extend = { 'ensure_installed' },
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        'bash',
        'c',
        'css',
        'dockerfile',
        'gitignore',
        'graphql',
        'html',
        'javascript',
        'json',
        'lua',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'regex',
        'rust',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'yaml',
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<c-tab>',
          node_incremental = '<c-tab>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
      --   local treesitter = require('nvim-treesitter.configs')
      --
      --   treesitter.setup({
      --     highlight = {
      --       enable = true,
      --       disable = function(lang, buf)
      --         local max_filesize = 100 * 1024 -- 100 KB
      --         local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      --         if ok and stats and stats.size > max_filesize then
      --           return true
      --         end
      --       end,
      --     },
      --     indent = { enable = true },
      --     incremental_selection = {
      --       enable = true,
      --       keymaps = {
      --         init_selection = 'gnn',
      --         node_incremental = 'grn',
      --         scope_incremental = 'grc',
      --         node_decremental = 'grm',
      --       },
      --     },
      --   })
    end,
  },

  {
    'folke/which-key.nvim',
    opts = {
      spec = {
        { '<c-tab>', desc = 'Increment Selection', mode = { 'x', 'n' } },
        { '<bs>', desc = 'Decrement Selection', mode = 'x' },
      },
    },
  },
}
