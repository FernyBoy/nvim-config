return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "m",
        function()
          require("telescope.builtin").find_files({ hidden = true })
        end,
        desc = "Find Files (incl. hidden)",
      },
      {
        "<C-m>",
        function()
          require("telescope.builtin").live_grep({
            additional_args = { "--hidden", "--glob", "!.git/" },
          })
        end,
        desc = "Live Grep (incl. hidden)",
      },
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({ hidden = true })
        end,
        desc = "Find Files (incl. hidden)",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep({
            additional_args = { "--hidden", "--glob", "!.git/" },
          })
        end,
        desc = "Live Grep (incl. hidden)",
      },
      {
        "<leader>fb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Buffers",
      },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = { "^%.git/" },
      },
    },
  },
}
