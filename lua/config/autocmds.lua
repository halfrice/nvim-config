vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true }),
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true }

    -- auto-completion
    -- local client = vim.lsp.get_client_by_id(ev.data.client_id)
    -- if client:supports_method('textDocument/completion') then
    --   vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    -- end

    -- keymaps
		-- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition({}) end, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<c-s-K>", vim.lsp.buf.signature_help, opts)
		-- vim.keymap.set("n", "gD", function() vim.lsp.buf.implementation({}) end, opts)
		vim.keymap.set("n", "1gD", function() vim.lsp.buf.type_definition({}) end, opts)
		-- vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
		vim.keymap.set("n", "<c-]>", function() vim.lsp.buf.declaration({}) end, opts)
		vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>ih", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
		end, opts)
		vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "<leader>k", function()
			vim.diagnostic.jump({ float = true, count = -1 })
		end, opts)
		vim.keymap.set("n", "<leader>j", function()
			vim.diagnostic.jump({ float = true, count = 1 })
		end, opts)
  end,
})
