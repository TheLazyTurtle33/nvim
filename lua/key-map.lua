vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = 'Toggle comment' })
vim.keymap.set("v", "<C-_>", "gc", { remap = true, desc = 'Toggle comment' })

vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<C-p>", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})


-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- neo-tree
vim.keymap.set("n", "<C-b>", ":Neotree filesystem toggle left<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})


