local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", { silent = true })

-- Better pane/buffer navigation

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<cr>")
map("n", "<leader>fw", ":Telescope live_grep<cr>")
map("n", "<leader>fb", ":Telescope buffers<cr>")
map("n", "<leader>fh", ":Telescope help_tags<cr>")
map("n", "<leader>fr", ":Telescope resume<cr>")

-- Trouble
map("n", "<leader>tt", ":TroubleToggle<CR>")

-- Quick Packer
map("n", "<leader>ps", ":PackerSync<CR>")
map("n", "<leader>pc", ":PackerCompile<CR>")

-- Terminal
map("t", "<ESC>", "<C-\\><C-n>")
map("t", "<C-[>", "<C-\\><C-n>")


