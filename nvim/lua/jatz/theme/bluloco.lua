--[[ link info theme https://github.com/uloco/bluloco.nvim ]]
local status_ok, bluloco = pcall(require, "bluloco")
if not status_ok then
  return
end

bluloco.setup({
  style = "dark", -- "auto" | "dark" | "light" ]]
  transparent = false,
  italics = false,
  terminal = vim.fn.has("gui_running") == 1 -- bluloco colors are enabled in gui terminals per default.
})

vim.cmd('colorscheme bluloco')
