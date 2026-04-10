vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = 'Toggle comment' })
vim.keymap.set("v", "<C-_>", "gc", { remap = true, desc = 'Toggle comment' })

vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

local modes = { 'n', 'i', 'v' }
local keys = { '<Up>', '<Down>', '<Left>', '<Right>' }

-- disable arrow keys
vim.keymap.set('n', '<Up>',    '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>',  '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>',  '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Up>',    '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Down>',  '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Left>',  '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Up>',    '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Down>',  '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Left>',  '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Right>', '<Nop>', { noremap = true, silent = true })


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


