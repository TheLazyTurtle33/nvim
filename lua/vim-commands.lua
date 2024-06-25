vim.api.nvim_create_user_command("Config", function()
  vim.cmd("tabnew")
  vim.cmd("tcd C:/Users/jro03/AppData/Local/nvim")
  vim.cmd("Oil")
end, {})

vim.api.nvim_create_user_command("ConfigCommands", function()
  vim.cmd("tabnew C:/Users/jro03/AppData/Local/nvim/lua/vim-commands.lua")
end, {})

vim.api.nvim_create_user_command("ConfigKeyMappings", function()
  vim.cmd("tabnew C:/Users/jro03/AppData/Local/nvim/lua/vim-keymap.lua")
end, {})

vim.api.nvim_create_user_command("ConfigInit", function()
  vim.cmd("tabnew C:/Users/jro03/AppData/Local/nvim/init.lua")
end, {})

vim.api.nvim_create_user_command("CodeBase", function()
  vim.cmd("tabnew")
  vim.cmd("tcd C:/Users/jro03/OneDrive/Documents/Code")
  vim.cmd("Oil")
end, {})

vim.api.nvim_create_user_command("Zig11Init", function()
  vim.cmd("! at 'C:/Program Files (x86)/zig-windows-x86_64-0.11.0/' zig.exe init")
end, {})



--[[
vim.api.nvim_create_user_command('ConfigInit',function ()
   vim.cmd("e C:/Users/jro03/AppData/Local/nvim/init.lua")
end,{})

vim.api.nvim_create_user_command('ConfigInit',function ()
   vim.cmd("e C:/Users/jro03/AppData/Local/nvim/init.lua")
end,{}) ]]
--
