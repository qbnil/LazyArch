return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
  lazy = true,
  cmd = "Telescope",
  config = {
    defaults = {
      prompt_prefix = "❯ ",
      selection_caret = "❯ ",
      layout_config = { horizontal = { preview_width = 0.5 } },
      file_ignore_patterns = { "node_modules/.*" },
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
        n = { ["<C-c>"] = "close" },
      },
    },
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
    { "<leader>\\", "<cmd>Telescope buffers show_all_buffers=true<CR>", desc = "Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help Pages" },
    { "<leader>fo", "<cmd>Telescope oldfiles<CR>", desc = "Recent" },
    { "<leader>fgw", "<cmd>Telescope live_grep<CR>", desc = "Grep" },
    { "<leader>:", "<cmd>Telescope command_history<CR>", desc = "Command History" },
    {
      "<leader>fd",
      "<cmd>lua require'telescope.builtin'.git_files({ cwd = '$HOME/.config/nvim' })<CR>",
      desc = "Search dotfiles",
    },
  },
}
