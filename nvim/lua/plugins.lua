local fn = vim.fn

-- Instalacion automatica de packer
local install_path = fn.stdpath "data" .. "$HOME/AppData/local/nvim-data/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  --print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Al guardar este el archivo de plugins automatica se recarga
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use una llamada protegida para que no cometamos un error en el primer uso
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Hacer que packer tenga una ventana emergente
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Instalacion de los plugins
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Gestor de packer

  use "vim-airline/vim-airline" -- Indicador de modos
  use "vim-airline/vim-airline-themes" -- Temas para el indicador de modos
  use "joshdick/onedark.vim" --Tema onedark

 -- cmp plugins
  use "hrsh7th/nvim-cmp" -- Plugion para complete lsp
  use "hrsh7th/cmp-buffer" -- buffer complete
  use "hrsh7th/cmp-path" -- path complete
  use "hrsh7th/cmp-cmdline" -- cmdline complete
  use "saadparwaiz1/cmp_luasnip" -- snippet complete lua
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- Activa LSP 
  use "williamboman/nvim-lsp-installer" -- Gestor para instalar servidores de lenguajes 
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for

  --Terminal toggle
  use "voldikss/vim-floaterm"
  -- Maximisa ventanas
  use "szw/vim-maximizer"

  --if PACKER_BOOTSTRAP then
    --require("packer").sync()
  --end
end)
