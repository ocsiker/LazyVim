-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap_files = {
  "keymaps/asciidoc",
}

for _, file in ipairs(keymap_files) do
  local ok, err = pcall(require, file)
  if not ok then
    print("Lỗi khi load keymap từ: " .. file .. "\n" .. err)
  end
end
