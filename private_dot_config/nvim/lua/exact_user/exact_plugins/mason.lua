-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "ansiblels",
        "bashls",
        "bufls",
        "cssls",
        "golangci_lint_ls",
        "gopls",
        "jsonls",
        "lua_ls",
        "marksman",
        "powershell_es",
        "pyright",
        "ruff_lsp",
        "svelte",
        "tailwindcss",
        "taplo",
        "terraformls",
        "tflint",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "ansiblelint",
        "buf",
        "gofumpt",
        "goimports",
        "gomodifytags",
        "iferr",
        "impl",
        "luacheck",
        "prettierd",
        "ruff",
        "shellcheck",
        "shfmt",
        "snyk",
        "stylua",
        "tfsec",
      })
      if not opts.handlers then opts.handlers = {} end
      opts.handlers.taplo = function() end -- prevent mason-null-ls from setting up taplo
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bash",
        "js",
        "python",
      })
      if not opts.handlers then opts.handlers = {} end
      opts.handlers.python = function() end -- prevent mason-nvim-dap from setting up python
    end,
  },
}
