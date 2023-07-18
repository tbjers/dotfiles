return {
	-- You can also add new plugins here as well:
	-- Add plugins, the lazy syntax
	-- "andweeb/presence.nvim",
	-- {
	--   "ray-x/lsp_signature.nvim",
	--   event = "BufRead",
	--   config = function()
	--     require("lsp_signature").setup()
	--   end,
	-- },
	{
		"IndianBoy42/tree-sitter-just",
		event = "BufRead",
		config = function()
			require("tree-sitter-just").setup({})
		end,
	},
	-- configure Telescope to load the Projects extension
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"ahmedkhalf/project.nvim",
		},
		config = function(plugin, opts)
			require("plugins.configs.telescope")(plugin, opts)
			local telescope = require("telescope")
			telescope.load_extension("projects")
		end,
	},
}
