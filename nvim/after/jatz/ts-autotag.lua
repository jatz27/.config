local status_ok, tpairs = pcall(require, "nvim-ts-autotag")
if not status_ok then
  return
end

tpairs.setup({})
