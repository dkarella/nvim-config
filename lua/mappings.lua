require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "\\", "<cmd>vsplit<cr>", { desc = "vsplit" })
map("n", "|", "<cmd>split<cr>", { desc = "hsplit" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "quit" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("t", "<C-c>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map("n", "<leader>v", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map("n", "<leader>h", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term" })
