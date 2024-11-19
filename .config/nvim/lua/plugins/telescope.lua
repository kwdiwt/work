return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        defaults = { file_ignore_patterns = { ".venv" } }
      })
    end,
  },
}
