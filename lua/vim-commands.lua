vim.api.nvim_create_user_command("Config", function()
  vim.cmd("tabnew")
  vim.cmd("tcd ~/.config/nvim")
  vim.cmd("Oil")
end, {})

vim.api.nvim_create_user_command("ConfigCommands", function()
  vim.cmd("tabnew ~/.config/nvim/lua/vim-commands.lua")
end, {})

vim.api.nvim_create_user_command("ConfigKeyMappings", function()
  vim.cmd("tabnew ~/.config/nvim/lua/vim-keymap.lua")
end, {})

vim.api.nvim_create_user_command("ConfigInit", function()
  vim.cmd("tabnew ~/.config/nvim/init.lua")
end, {})

vim.api.nvim_create_user_command("CodeBase", function()
  vim.cmd("tabnew")
  vim.cmd("tcd ")
  vim.cmd("Oil")
end, {})
