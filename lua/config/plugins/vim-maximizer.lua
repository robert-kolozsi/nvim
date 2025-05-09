-- Zooms splited windows to full screen
return {
    "szw/vim-maximizer",
    keys = {
        { "<leader>m", "<cmd>MaximizerToggle<cr>", desc = "Maximize current window" },
    },
}
