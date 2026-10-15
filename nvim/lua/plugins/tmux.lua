-- Nahtlos zwischen Neovim-Splits und tmux-Panes wechseln: Ctrl+h/j/k/l
return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Pane links" },
      { "<c-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Pane unten" },
      { "<c-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Pane oben" },
      { "<c-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Pane rechts" },
    },
  },
}
