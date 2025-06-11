return {
  "ya2s/nvim-cursorline",
  config = function()
    require("nvim-cursorline").setup({
      cursorline = {
        enable = true,
      },
      cursorword = {
        enable = false
      }
    })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
  end,
}
