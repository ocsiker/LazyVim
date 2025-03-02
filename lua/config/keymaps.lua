-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymaps = {
  "config.keymaps.asciidoc",
}

for _, mod in ipairs(keymaps) do
  local ok, err = pcall(require, mod)
  if not ok then
    vim.notify("Lỗi khi load keymap: " .. mod .. "\n" .. err, vim.log.levels.ERROR)
  end
end
