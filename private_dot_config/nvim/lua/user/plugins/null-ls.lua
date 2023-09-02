return {
	"jose-elias-alvarez/null-ls.nvim",
	opts = function(_, config)
		-- config variable is the default configuration table for the setup function call
		local null_ls = require("null-ls")

		-- Check supported formatters and linters
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
		config.sources = {
			null_ls.builtins.diagnostics.dotenv_linter,
			null_ls.builtins.diagnostics.editorconfig_checker,
			null_ls.builtins.formatting.just,
			null_ls.builtins.formatting.puppet_lint,
			null_ls.builtins.formatting.terraform_fmt,
		}
		return config -- return final config table
	end,
}
