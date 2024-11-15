return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        filesystem = {
          filtered_items = {
            never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
              "__pycache__",
            },
          },
        },
        window = {
          width = 30
        }
      })
    end,
  },
}
