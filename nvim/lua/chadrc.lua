-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  nvdash = {
    load_on_startup = false,  -- 👈 esto desactiva el dashboard por defecto de NvChad
  },
}

M.plugins = "custom.plugins"  -- 👈 asegúrate de que esto apunte a tu archivo de plugins

return M

