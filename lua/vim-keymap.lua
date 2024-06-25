--- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
--- Navigate vim panes better with arrows
vim.keymap.set("n", "<c-Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-Right>", ":wincmd l<CR>")
vim.keymap.set("n", "<A-Right>", ":tabnext<CR>")
vim.keymap.set("n", "<A-Left>", ":tabNext<CR>")
vim.keymap.set("i", "<A-Right>", "<Esc>:tabnext<CR>a")
vim.keymap.set("i", "<A-Left>", "<Esc>:tabNext<CR>a")


--- Selecting
vim.keymap.set("n", "<S-Up>", "v<Up>")
vim.keymap.set("n", "<S-Down>", "v<Down>")
vim.keymap.set("n", "<S-Left>", "v<Left>")
vim.keymap.set("n", "<S-Right>", "v<Right>")
vim.keymap.set("v", "<S-Up>", "<Up>")
vim.keymap.set("v", "<S-Down>", "<Down>")
vim.keymap.set("v", "<S-Left>", "<Left>")
vim.keymap.set("v", "<S-Right>", "<Right>")
vim.keymap.set("i", "<S-Up>", "<Esc>v<Up>")
vim.keymap.set("i", "<S-Down>", "<Esc>v<Down>")
vim.keymap.set("i", "<S-Left>", "<Esc>v<Left>")
vim.keymap.set("i", "<S-Right>", "<Esc>v<Right>")

vim.keymap.set("n", "<C-a>", "gg<Home>vG")
vim.keymap.set("i", "<C-a>", "<Esc>gg<Home>vG")

--- Copy/Past
vim.keymap.set("i", "<C-c>", '<End><Esc>v<Home>"+y<Esc>i')
vim.keymap.set("n", "<C-c>", '<End>v<Home>"+y<Esc>')
vim.keymap.set("v", "<C-c>", '"+y<Esc>i')
vim.keymap.set("v", "<C-x>", '"+d<Esc>i')
vim.keymap.set("v", "<C-v>", '<Esc>"+pv')
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("i", "<C-v>", '<Esc>"+pa')
vim.keymap.set("i", "<C-z>", "<Esc>ui")
vim.keymap.set("n", "<C-z>", "u")
vim.keymap.set("i", "<C-y>", "<Esc><C-r>i")
vim.keymap.set("n", "<C-y>", "<C-r>")

--- Save
vim.keymap.set("i", "<C-s>", "<Esc><M-f><Esc>:w<CR>")
vim.keymap.set("n", "<C-s>", "<M-f><Esc>:w<CR>")

vim.keymap.set("n", "<Tab>", ">>")

vim.keymap.set("i", "<S-Tab>", "<Esc><<i")
vim.keymap.set("n", "<S-Tab>", "<<")


vim.keymap.set("v", "<Tab>", ">")
vim.keymap.set("v", "<S-Tab>", "<")


vim.keymap.set("n", "<Backspace>", "h<Del>")


--- moving lines
vim.keymap.set("n", "<A-j>", ":m .-2<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .+1<CR>==") -- move line down(n)
vim.keymap.set("i", "<A-j>", "<Esc>:m .-2<CR>==a") -- move line up(i)
vim.keymap.set("i", "<A-k>", "<Esc>:m .+1<CR>==a") -- move line down(i)
vim.keymap.set("v", "<A-j>", ":m '>-2<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<+1<CR>gv=gv") -- move line down(v)


--- moving lines With Arrows
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==") -- move line down(n)
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==a") -- move line up(i)
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==a") -- move line down(i)
vim.keymap.set("v", "<A-Up>", ":m '>-2<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-Down>", ":m '<+1<CR>gv=gv") -- move line down(v)

--- Code Stuff

vim.keymap.set("i", "{", "{}<Left>")
-- vim.keymap.set("i", "{<CR>", "{<CR><CR>}<Up><Tab>")
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", '"', '""<Left>')
vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "'", "''<Left>")

-- Check if the cursor is inside curly braces
local function is_inside_braces()
    local line = vim.fn.getline('.')
    local col = vim.fn.col('.')
    return line:sub(col-1, col) == '{}'
end

-- Define your custom key mapping
vim.api.nvim_set_keymap('i', '<CR>', [[v:lua.Custom_return_key()]], { expr = true, noremap = true, silent = true })

-- Implement the custom behavior
function Custom_return_key()
    if is_inside_braces() then
        -- Simulate pressing Enter twice, then Up arrow, and finally Tab
        return vim.fn.nr2char(13) .. vim.fn.nr2char(13) .. vim.fn.nr2char(27) .. vim.fn.nr2char(16) .. 'a' .. vim.fn.nr2char(9)
        -- return vim.fn.nr2char(13)
    else
        -- Just press Enter
        return vim.fn.nr2char(13)
    end
end




