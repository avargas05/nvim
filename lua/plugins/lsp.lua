return {
  {
    "LazyVim/LazyVim",
    opts = {
      autoformat = false,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "svelte",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
              runBuildScripts = true,
            },
            procMacro = {
              enable = true,
              ignored = {
                leptos_macro = {
                  -- optional: --
                  -- "component",
                  "server",
                },
              },
            },
          },
        },
      })
    end,
  },
}
