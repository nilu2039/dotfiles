require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Indent and reselect visual selection
map("v", ">", ">gv", { desc = "Indent and reselect" })
map("v", "<", "<gv", { desc = "Unindent and reselect" })

map("n", "<C-h>", "<cmd> TmuxNavigateLeft <cr>", {desc = "Window Left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight <cr>", {desc = "Window Right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown <cr>", {desc = "Window Down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp <cr>", {desc = "Window Up"})

-- Duplicate line down
map("n", "<A-j>", "yyp", { desc = "Duplicate line down" }) -- Alt + j

-- Duplicate line up
map("n", "<A-k>", "yyP", { desc = "Duplicate line up" }) -- Alt + k

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>"
local builtin = require('telescope.builtin')
map("n", "<leader>fs", function()
  builtin.grep_string({
    search = vim.fn.input("Grep > "),
    only_sort_text = true,
    search_dirs = { vim.fn.expand("%:p") }, -- Restrict to current file
  })
end, { desc = "Grep exact phrase in current buffer" })

map("i", "<C-l>", function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, {desc = "Copilot Accept", nowait = true, silent = true, noremap = true})

map("n", "<leader>h", "<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal theme=ivy<cr>", { desc = "Open Telescope buffers"})

map("n", "L", '<cmd> lua vim.diagnostic.open_float(0, {scope="cursor"}) <cr>', { desc = "Open diagnostics" })
