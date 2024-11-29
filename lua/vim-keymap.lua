--- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<A-l>", ":tabnext<CR>")
vim.keymap.set("n", "<A-h>", ":tabNext<CR>")

vim.keymap.set("i", "{", "{}<Left>")
-- vim.keymap.set("i", "{<CR>", "{<CR><CR>}<Up><Tab>")
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", '"', '""<Left>')
vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "'", "''<Left>")


vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')


-- Check if the cursor is inside curly braces
local function is_inside_braces()
    local line = vim.fn.getline('.')
    local col = vim.fn.col('.')
    return line:sub(col-1, col) == '{}' or line:sub(col-1, col) == '[]' or line:sub(col-1, col) == '()'
end
-- define your custom key mapping
vim.api.nvim_set_keymap('i', '<cr>', [[v:lua.custom_return_key()]], { expr = true, noremap = true, silent = true })

-- implement the custom behavior
function custom_return_key()
    if is_inside_braces() then
        -- simulate pressing enter twice, then up arrow, and finally tab
        return vim.fn.nr2char(13) .. vim.fn.nr2char(13) .. vim.fn.nr2char(27) .. vim.fn.nr2char(16) .. 'a' .. vim.fn.nr2char(9)
        -- return vim.fn.nr2char(13)
    else
        -- just press enter
        return vim.fn.nr2char(13)
    end
end


-- define your custom key mapping
vim.api.nvim_set_keymap('i', '<BS>', [[v:lua.custom_backspase_key()]], { expr = true, noremap = true, silent = true })

-- implement the custom behavior
function custom_backspase_key()
    if is_inside_braces() then
        -- simulate pressing enter twice, then up arrow, and finally tab
        return vim.fn.nr2char(27) .. 'l' .. 'a' .. vim.fn.nr2char(8) .. vim.fn.nr2char(8)
       -- return vim.fn.nr2char(13)   
    else
        -- just press enter
        return vim.fn.nr2char(8)
    end
end
