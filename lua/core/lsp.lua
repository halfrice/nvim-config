vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "Snacks" },
			},
			completion = {
				callSnippet = "Replace",
			},
			format = {
				enable = true,
				defaultConfig = {
					indent_style = "space",
					indent_size = "2",
					quote_style = "AutoPreferSingle",
				},
			},
			telemetry = { enable = false },
			workspace = { checkThirdParty = false },
		},
	},
})

vim.lsp.config("pyright", {
	settings = {
		pyright = {
			-- Using Ruff's import organizer
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				-- Ignore all files for analysis to exclusively use Ruff for linting
				ignore = { "*" },
			},
		},
	},
})

-- vim.lsp.config('ruff', {
--   init_options = {
--     settings = {},
--   },
--   callback = function()
--     vim.api.nvim_create_autocmd('LspAttach', {
--       group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
--       callback = function(args)
--         local client = vim.lsp.get_client_by_id(args.data.client_id)
--         if client == nil then
--           return
--         end
--         if client.name == 'ruff' then
--           -- Disable hover in favor of Pyright
--           client.server_capabilities.hoverProvider = false
--         end
--       end,
--       desc = 'LSP: Disable hover capability from Ruff',
--     })
--   end,
-- })

vim.lsp.enable({
	"lua_ls",
	"pyright",
	-- 'ruff',
})

vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	globals = { "vim" },
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		{
			numh1 = {
				[vim.diagnostic.severity.ERROR] = "ErrorMsg",
				[vim.diagnostic.severity.WARN] = "WarningMsg",
			},
		},
	},
})
