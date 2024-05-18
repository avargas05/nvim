return {
  -- add AI code completion
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",
    config = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<A-m>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 300,
        suggestion_color = { gui = "#808080", cterm = 244 },
        execlude_filetypes = { "TelescopePrompt" },
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_z, "tabnine")
    end,
  },
}
