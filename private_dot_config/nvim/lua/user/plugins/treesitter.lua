return {
	"nvim-treesitter/nvim-treesitter",
	opts = function(_, opts)
		-- add more things to the ensure_installed table protecting against community packs modifying it
		opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
			"gomod",
			"gosum",
			"just",
			"lua",
			"luap",
			"markdown",
			"markdown_inline",
			"puppet",
			"python",
			"toml",
			"yaml",
		})
	end,
	dependencies = {
		{
			"IndianBoy42/tree-sitter-just",
			config = function()
				require("nvim-treesitter.parsers").get_parser_configs().just = {
					install_info = {
						url = "https://github.com/IndianBoy42/tree-sitter-just", -- local path or git repo
						files = { "src/parser.c", "src/scanner.cc" },
						branch = "main",
					},
					maintainers = { "@IndianBoy42" },
				}
			end,
		},
	},
}
