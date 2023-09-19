return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",

	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity
	{ import = "astrocommunity.color.transparent-nvim" },
	{ import = "astrocommunity.colorscheme.dracula-nvim" },
	{ import = "astrocommunity.colorscheme.nord-nvim" },
	{ import = "astrocommunity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.editing-support.text-case-nvim" },
	{ import = "astrocommunity.note-taking.obsidian-nvim" },
	{ import = "astrocommunity.pack.prisma" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.syntax.hlargs-nvim" },
	{ import = "astrocommunity.syntax.vim-cool" },
	{ import = "astrocommunity.test.neotest" },
	{ import = "astrocommunity.test.nvim-coverage" },

	-- Configure individual community plugins:
	{
		"dracula.nvim",
		opts = {
			transparent_bg = true,
			italic_comment = true,
		},
	},
}
