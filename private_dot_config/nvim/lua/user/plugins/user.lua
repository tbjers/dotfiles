return {
	-- Add plugins, the lazy syntax
	{
		"andweeb/presence.nvim",
		event = "VeryLazy",
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function() require("lsp_signature").setup {} end,
	},
	{
		"IndianBoy42/tree-sitter-just",
		event = "BufRead",
		config = function() require("tree-sitter-just").setup {} end,
	},
	{
		"FabijanZulj/blame.nvim",
		event = "User AstroGitFile",
		opts = {
			virtual_style = "right_align",
			merge_consecutive = true,
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = "markdown",
	},
	{
		"linux-cultist/venv-selector.nvim",
		opts = {},
		keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
	},
}
