return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
      ['<tab>'] = {},
      ['<c-i>'] = { 'show', 'fallback' },
      ['<c-q>'] = { 'hide', 'fallback' },
      ['<c-k>'] = { 'select_prev', 'fallback' },
      ['<c-j>'] = { 'select_next', 'fallback' },
      ['<c-l>'] = { 'select_and_accept', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
  opts_extend = { 'sources.default' },
}
