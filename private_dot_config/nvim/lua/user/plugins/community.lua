return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",

	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity
	{ import = "astrocommunity.colorscheme.dracula-nvim" },
	{ import = "astrocommunity.colorscheme.nord-nvim" },
	{ import = "astrocommunity.editing-support.refactoring-nvim" },
	{ import = "astrocommunity.git.blame-nvim" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.note-taking.obsidian-nvim" },
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.pack.docker" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.pack.nix" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.ruby" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.terraform" },
	{ import = "astrocommunity.pack.toml" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.project.project-nvim" },
	{ import = "astrocommunity.syntax.hlargs-nvim" },
	{ import = "astrocommunity.syntax.vim-cool" },
	{ import = "astrocommunity.test.neotest" },
	{ import = "astrocommunity.test.nvim-coverage" },
	{ import = "astrocommunity.utility.transparent-nvim" },
	{
		"blame.nvim",
		opts = {
			virtual_style = "right_align",
			merge_consecutive = true,
		},
	},
	{
		"dracula.nvim",
		opts = {
			transparent_bg = true,
			italic_comment = true,
		},
	},
	{
		"project_nvim",
		opts = {
			-- Manual mode doesn't automatically change your root directory, so you have
			-- the option to manually do so using `:ProjectRoot` command.
			manual_mode = true,

			-- Methods of detecting the root directory. **"lsp"** uses the native neovim
			-- lsp, while **"pattern"** uses vim-rooter like glob pattern matching.
			detection_methods = { "lsp", "pattern" },

			-- Table of lsp clients to ignore by name
			-- eg: { "efm", ... }
			ignore_lsp = {},

			-- Don't calculate root dir on specific directories
			-- Ex: { "~/.cargo/*", ... }
			exclude_dirs = {},

			-- Show hidden files in telescope
			show_hidden = true,

			-- When set to false, you will get a message when project.nvim
			-- changes your directory.
			silent_chdir = false,

			-- What scope to change the directory, valid options are:
			-- * global (default)
			-- * tab
			-- * win
			scope_chdir = "global",

			-- Path where project.nvim will store the project history
			-- for use in telescope
			-- datapath = vim.fn.stdpath("data"),
		},
	},
}
