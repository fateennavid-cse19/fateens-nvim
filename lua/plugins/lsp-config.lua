return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls", -- Bash
					"clangd", -- C/C++
					"cmake", -- CMake
					"cssls", -- CSS
					"dockerls", -- Dockerfile
					"gopls", -- Go (if needed)
					"html", -- HTML
					"htmx", -- HTMX / htmldjango
					"jdtls", -- Java
					"ts_ls", -- JavaScript / TypeScript
					"jsonls", -- JSON / JSON5 / JSONC
					"lua_ls", -- Lua
					"marksman", -- Markdown
					"nginx_language_server", -- NGINX
					"intelephense", -- PHP
					"powershell_es", -- PowerShell
					"pyright", -- Python
					"rust_analyzer", -- Rust
					"sqlls", -- SQL
					"svelte", -- Svelte
					"terraformls", -- Terraform
					"vuels", -- Vue
					"yamlls", -- YAML
					"lemminx", -- XML
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local servers = {
				"bashls", -- Bash
				"clangd", -- C/C++
				"cmake", -- CMake
				"cssls", -- CSS
				"dockerls", -- Dockerfile
				"gopls", -- Go (if needed)
				"html", -- HTML
				"htmx", -- HTMX / htmldjango
				"jdtls", -- Java
				"ts_ls", -- JavaScript / TypeScript
				"jsonls", -- JSON / JSON5 / JSONC
				"lua_ls", -- Lua
				"marksman", -- Markdown
				"nginx_language_server", -- NGINX
				"intelephense", -- PHP
				"powershell_es", -- PowerShell
				"pyright", -- Python
				"rust_analyzer", -- Rust
				"sqlls", -- SQL
				"svelte", -- Svelte
				"terraformls", -- Terraform
				"yamlls", -- YAML
				"lemminx", -- XML
			}
			for _, server in ipairs(servers) do
				lspconfig[server].setup({ capabilities = capabilities })
			end

			vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "D", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "A", vim.lsp.buf.code_action, {})
		end,
	},
}
