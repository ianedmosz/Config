return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Asegura que se cargue primero
    lazy = false,    -- Lo carga en el arranque
    config = function()
      vim.cmd("colorscheme onedark") -- Puedes cambiar a 'onedark_dark', 'onedark_vivid', etc.
    end,
  },
}
