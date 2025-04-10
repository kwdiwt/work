return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                width = 0.24,
              },
            },
          },
        },
      },
      terminal = {
        -- your terminal configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        win = {
          position = "float",
          width = 0.6,
        },
      },
    },
  },
}
