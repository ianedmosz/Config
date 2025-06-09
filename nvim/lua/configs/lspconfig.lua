-- Cargar configuración predeterminada de NvChad para LSP
require("nvchad.configs.lspconfig").defaults()

-- Requerir lspconfig
local lspconfig = require "lspconfig"

-- Servidores que usarán configuración predeterminada
local servers = { "html", "cssls", "clangd", "pyright" } -- Añadido "clangd" y "pyright" para Python

-- Importar configuración por defecto de NvChad para LSP
local nvlsp = require "nvchad.configs.lspconfig"

-- Configurar servidores con configuración predeterminada
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Configuración adicional para clangd (opcional)
lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = { "clangd", "--background-index" }, -- Opcional: Ajustar comandos de inicio
}

-- Configuración específica de Pyright (ya estaba, pero la dejo para que sigas usándola)
lspconfig.pyright.setup{
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

