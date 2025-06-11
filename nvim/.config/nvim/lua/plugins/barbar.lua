return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("barbar").setup({
        animation = false,
        auto_hide = 0,
        -- clickable = false,
        exclude_name = { "" },
        sidebar_filetypes = {
          ["neo-tree"] = { event = "BufWipeout" },
        },
      })
      vim.keymap.set("n", "<leader>q", "<Cmd>BufferClose<CR>", {})
      vim.keymap.set("n", "b[", "<Cmd>BufferMovePrevious<CR>", {})
      vim.keymap.set("n", "b]", "<Cmd>BufferMoveNext<CR>", {})
    end,
  },
}
