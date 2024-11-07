return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
      })
    end,
  },
}
